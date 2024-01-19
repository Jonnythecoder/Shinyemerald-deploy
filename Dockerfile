FROM node:20-alpine

RUN apk add --no-cache git

RUN git clone --depth=1 https://github.com/Templates-dude/ShinyEmerald.git

WORKDIR /ShinyEmerald

RUN pnpm install
RUN pnpm build 

CMD pnpm preview
