# docker global repo
FROM node:latest



RUN mkdir -p /app

WORKDIR /app

COPY package.json . 

RUN npm install

COPY . . 
EXPOSE 3000

CMD ["npm","start"]

# Run it
# ENTRYPOINT ["node", "start"]