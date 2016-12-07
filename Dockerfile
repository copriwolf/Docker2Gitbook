FROM node
MAINTAINER Copriwolf <root@or2.in>

RUN mkdir -p /gitbook/docs
WORKDIR /gitbook

RUN npm config set registry=http://registry.npm.taobao.org
# RUN npm_config_registry=http://registry.npm.taobao.org \
#    npm_config_disturl=http://npm.taobao.org/dist

RUN npm install -g gitbook-cli && gitbook -V

COPY ./book.json /gitbook/
RUN npm install nodejieba
RUN npm install gitbook-plugin-search-jieba
RUN gitbook install
COPY ./docs/ /gitbook/docs/

EXPOSE 4000 
CMD ["gitbook","serve"]


