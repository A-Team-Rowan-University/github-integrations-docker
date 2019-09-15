FROM node:10

RUN wget https://github.com/JOHNeMac36/create-issue-branch/archive/1.0.tar.gz -O create-issue-branch.tar.gz
RUN tar -xvzf create-issue-branch.tar.gz

RUN ls -la
RUN mv create-issue-branch-1.0 /srv
RUN ls -la
COPY .env /srv/create-issue-branch-1.0

WORKDIR /srv/create-issue-branch-1.0

RUN yarn install
RUN yarn start
