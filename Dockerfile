FROM node:11
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
# RUN npm run build
EXPOSE 3000
ENV SKIP_PREFLIGHT_CHECK=true
CMD [ "npm", "start" ]

# FROM nginx:alpine
# COPY . /usr/share/nginx/html
# EXPOSE 80