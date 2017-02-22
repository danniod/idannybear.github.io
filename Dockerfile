FROM scratch
MAINTAINER Jianying Li <lijianying12@gmail.com>

ADD ./rootfs.tar / 
RUN mkdir -p /app
WORKDIR /app
COPY ./static /app/
RUN git clone git@github.com:idannybear/idannybear.github.io.git /public
EXPOSE 80

CMD ["/app/static"]
