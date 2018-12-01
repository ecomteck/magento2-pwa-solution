FROM aripalo/gatsby-docker

RUN npm install --global gatsby-cli && npm install --global yarn

RUN mkdir -p /site
WORKDIR /site
VOLUME /site

COPY ./entry.sh /
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]