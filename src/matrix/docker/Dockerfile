ARG BV_SYN=v0.22.1
FROM silviof/docker-matrix
ADD ./modules/* /usr/lib/python2.7/dist-packages/
RUN set -ex \
	&& apt-get update -y \
	&& apt-get install -y nano; \
	rm -rf /var/lib/apt/* /var/cache/apt/*
