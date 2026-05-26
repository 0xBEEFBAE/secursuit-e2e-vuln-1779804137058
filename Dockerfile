FROM node:14.15.0-alpine
# Pinned vulnerable base — node 14.15.0 has multiple CVEs in libssl + libcrypto
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
USER root
CMD ["node", "index.js"]
