FROM node:14.15.0

ARG PORT=3000
ENV PORT=${PORT}

WORKDIR /home/bridge
COPY . /home/bridge

RUN cd /home/bridge/front && npm install
RUN cd /home/bridge/front && npm run build

#CMD ["npm", "start"]

EXPOSE ${PORT}