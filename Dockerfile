FROM node:10

RUN wget https://github.com/JOHNeMac36/create-issue-branch/archive/1.1.tar.gz -O create-issue-branch.tar.gz
RUN tar -xvzf create-issue-branch.tar.gz

RUN ls -la
RUN mv create-issue-branch-1.1 /srv
RUN ls -la
COPY .env /srv/create-issue-branch-1.1

WORKDIR /srv/create-issue-branch-1.1

RUN yarn install
RUN yarn start
