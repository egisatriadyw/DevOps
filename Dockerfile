# Gunakan image Nginx versi terbaru
FROM nginx:latest

# Hapus konfigurasi default Nginx
RUN rm -rf /etc/nginx/conf.d/*

# Salin file konfigurasi Nginx kustom
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Salin konten proyek ke dalam direktori yang sesuai di dalam container
COPY . /usr/share/nginx/html

# Expose port 80 untuk Nginx
EXPOSE 80

# Perintah default yang akan dijalankan ketika container dimulai
CMD ["nginx", "-g", "daemon off;"]
