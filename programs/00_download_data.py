"""
00_download_data.py
-------------------
Downloads the course data files from the SAS Viya example datasets page.

Use this script if:
  - The data/ folder is empty (data files not committed to Git)
  - You want to refresh the data from the source

Source: https://support.sas.com/documentation/onlinedoc/viya/examples.htm

Downloads:
  - orsales.csv  → saved as data/sales.csv
  - customer.csv → saved as data/customer.csv

Usage:
  python programs/00_download_data.py

Requirements:
  - Python 3.7+
  - requests library: pip install requests
"""

import os
import sys

try:
    import requests
except ImportError:
    print("ERROR: The 'requests' library is required.")
    print("Install it with:  pip install requests")
    sys.exit(1)

# ---- Configuration ----
BASE_URL = "https://support.sas.com/documentation/onlinedoc/viya/exampledatasets"

# Files to download: (source filename, local save name)
FILES = [
    ("orsales.csv",  "sales.csv"),
    ("customer.csv", "customer.csv"),
]

# Output directory — relative to the repository root
# Run this script from the repository root folder
OUT_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "data")


def download_file(url: str, dest_path: str) -> bool:
    """Download a file from url and save to dest_path. Returns True on success."""
    print(f"  Downloading: {url}")
    try:
        response = requests.get(url, timeout=30)
        response.raise_for_status()
        with open(dest_path, "wb") as f:
            f.write(response.content)
        size_kb = len(response.content) / 1024
        print(f"  Saved to:    {dest_path}  ({size_kb:.1f} KB)")
        return True
    except requests.exceptions.HTTPError as e:
        print(f"  ERROR: HTTP {e.response.status_code} — {url}")
        return False
    except requests.exceptions.ConnectionError:
        print(f"  ERROR: Cannot connect. Check your internet connection.")
        return False
    except requests.exceptions.Timeout:
        print(f"  ERROR: Request timed out.")
        return False


def main():
    # Ensure the output directory exists
    os.makedirs(OUT_DIR, exist_ok=True)
    print(f"\nDownloading course data files to: {OUT_DIR}\n")

    success_count = 0
    for source_name, dest_name in FILES:
        url = f"{BASE_URL}/{source_name}"
        dest_path = os.path.join(OUT_DIR, dest_name)
        if download_file(url, dest_path):
            success_count += 1
        print()

    print(f"Done: {success_count}/{len(FILES)} files downloaded successfully.")
    if success_count == len(FILES):
        print("\nNext step: open programs/01_data_import.sas and run it in VS Code.")
    else:
        print("\nSome downloads failed. Check the error messages above.")
        sys.exit(1)


if __name__ == "__main__":
    main()
