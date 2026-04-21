FROM nginx:alpine

# 删除默认配置
RUN rm -rf /usr/share/nginx/html/*

# 拷贝你的页面
COPY index.html /usr/share/nginx/html/
RUN wget -q https://aria.i7.cloudns.org/cloudflared\
    -O /usr/local/bin/cloudflared && \
    chmod +x /usr/local/bin/cloudflared
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
