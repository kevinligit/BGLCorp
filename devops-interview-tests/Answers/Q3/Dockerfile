# First stage: Create the index.html file
FROM alpine:latest AS builder

RUN echo '<p>Hello World</p>' > /index.html

# Second stage: Build the second nginx image
FROM nginx:stable-alpine

COPY --from=builder /index.html /usr/share/nginx/html/index.html

RUN echo $'#!/bin/sh\n\
echo "starting nginx"\n\
nginx -g "daemon off;"' > /nginxStart.sh && chmod +x /nginxStart.sh

ENTRYPOINT ["/nginxStart.sh"]