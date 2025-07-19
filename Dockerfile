FROM node:iron-alpine3.20
WORKDIR /usr/src/app
RUN apk --no-cache add git
RUN git clone https://github.com/xwxfox/protoshock-server.git .
RUN npm install
RUN npm install sharp
ARG EXPOSE_GC=false
ENV EXPOSE_GC=$EXPOSE_GC
RUN chmod +x /usr/src/app/entryscript.sh
ENTRYPOINT ["/usr/src/app/entryscript.sh"]
EXPOSE 8880
