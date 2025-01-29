FROM node:20-alpine

# Instala o pnpm globalmente
RUN npm install -g pnpm

WORKDIR /code

COPY package.json pnpm-lock.yaml ./

# Instala as dependências usando pnpm
RUN pnpm install

COPY . .

EXPOSE 3000

CMD [ "pnpm", "run"]
