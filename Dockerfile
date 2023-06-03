# 使用 Nginx 的官方映像檔作為基底
FROM nginx:latest

# 複製靜態網站檔案到容器內的 /usr/share/nginx/html 目錄
COPY ./docs /usr/share/nginx/html

# 開放容器的 80 號埠口以供外部存取
EXPOSE 80

# 啟動 Nginx 伺服器
CMD ["nginx", "-g", "daemon off;"]