FROM nginx:alpine

# 删除默认配置
RUN rm -rf /usr/share/nginx/html/*

# 拷贝你的页面
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
