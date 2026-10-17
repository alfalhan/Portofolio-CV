# 1. Menggunakan Nginx versi ringan sebagai web server
FROM nginx:alpine

# 2. Menyalin seluruh isi folder portofolio Anda ke folder publik Nginx
COPY . /usr/share/nginx/html

# 3. Membuka port 80 untuk akses web
EXPOSE 80

# 4. Menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]