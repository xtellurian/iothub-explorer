FROM node:9-alpine
RUN apk add --no-cache bash
RUN npm install -g iothub-explorer
RUN echo 'alias iox="iothub-explorer"' >> ~/.bashrc

ENTRYPOINT [ "/bin/bash" ]
