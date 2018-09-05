FROM node:8-alpine
EXPOSE 3000
ENV DB_HOST='bsastoque-database-ramp-up.cm6hb8mfglop.us-east-1.rds.amazonaws.com'
ENV DB_USER='root'
ENV DB_PASS='Welcome2018!'
ENV DB_NAME='movie_db'
ENV PORT=3000
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY movie-analyst-api /usr/src/app/
RUN npm install
CMD ["npm", "start"]
