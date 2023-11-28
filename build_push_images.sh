#!/bin/bash
# Memulai proses pembuatan (build) image 'item-app:v1' dari Dockerfile di direktori saat ini
docker build -t item-app:v1 .

# Menampilkan daftar image Docker yang ada di sistem
docker images

# Membaca kata sandi dari file 'dockerpass.txt' dan menggunakan informasi tersebut untuk login ke Docker Hub
cat ../dockerpass.txt | docker login --username denicrizz --password-stdin
# Memberi tag (labelling) pada image 'item-app:v1' agar sesuai dengan format repository Docker Hub ('denicrizz/item-app:v1')
docker tag item-app:v1 denicrizz/item-app:v1
# Mengirim (push) image 'denicrizz/item-app:v1' ke Docker Hub
docker push denicrizz/item-app:v1