import gdown
import zipfile

google_drive_file_id = "1R72bY6gHyC3amy9VxLjKrougJUxhY_HK"
output_zip_file = 'download_file.zip'

gdown.download(f'https://drive.google.com/uc?id=1R72bY6gHyC3amy9VxLjKrougJUxhY_HK', output_zip_file, quiet=False)

with zipfile.ZipFile(output_zip_file, 'r') as zip_ref:
    zip_ref.extractall('extracted folder')

print("Download and extraction complete!")