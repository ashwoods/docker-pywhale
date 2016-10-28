FROM phusion/baseimage:0.9.19

MAINTAINER Ashley Camba Garrido <ashwoods@gmail.com>

CMD ["/sbin/my_init"]

# python runtimes + build dependencies + common web development dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
		# utils
		tcl \
		tk \
		wget \
		curl \
		git \
		mercurial \
		# python 3
		# python3 \
		# python3-dev \
		# python3-venv \
		# python3-pip \
		# python3-wheel \
        # python 2
        # python-dev \
        # python-virtualenv \
        # python-pip \
        # python-wheel \
		# build dependencies
		build-essential \
		libssl-dev \
		zlib1g-dev \
		libbz2-dev \
        libreadline-dev \
        libsqlite3-dev  \
        llvm \
        libncurses5-dev \
        libncursesw5-dev \
        xz-utils \
        # for lxml
        libxml2-dev \
        libxslt1-dev \
        # for pillow
        libtiff5-dev \
        libjpeg8-dev \
        libfreetype6-dev \
        liblcms2-dev \
        libwebp-dev \
        tcl8.6-dev \
        tk8.6-dev \
        python-tk \
        # postgres
        libpq-dev \
	&& rm -rf /var/lib/apt/lists/*

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Activate basic ssh for development
RUN rm -f /etc/service/sshd/down
RUN /usr/sbin/enable_insecure_key
RUN groupadd -r app && useradd -r -g app -d /app app


ENV LANG C.UTF-8
ENV PYTHONUNBUFFERED 1
ENV PYENV_ROOT /app/pyenv
ENV PATH /app/pyenv/shims:/app/pyenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#USER app
RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

# Use baseimage-docker's init system for installing requirements
COPY rc.local /etc
