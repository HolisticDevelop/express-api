# syntax=docker/dockerfile:1

FROM node:18-alpine

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm ci --omit=dev

COPY . .