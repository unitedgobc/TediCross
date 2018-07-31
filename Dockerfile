FROM node:8-alpine

WORKDIR /app
ADD . /app

RUN npm install

# Make sure the configuration file is bind-mounted and available in /config, as this
# driver will first copy /config/example.yaml to /app/example.yaml
CMD ["npm", "start"]

