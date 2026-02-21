# Sử dụng image Nginx bản nhẹ (alpine) làm nền
FROM nginx:alpine

# Xóa các file mặc định của Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy file html của bạn vào thư mục công khai của Nginx
# Giả sử file của bạn tên là index.html
COPY index.html /usr/share/nginx/html/index.html

# Mở cổng 80 để truy cập web
EXPOSE 80

# Chạy Nginx
CMD ["nginx", "-g", "daemon off;"]