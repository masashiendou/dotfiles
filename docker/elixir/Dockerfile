FROM alpine:3.9

RUN \
	: Installing packegs && \
		mkdir -p /opt/app && \
		chmod -R 777 /opt/app && \
		apk update && \
		apk --no-cache --update add busybox \
		gcc make git wget curl perl sed m4 ncurses alpine-sdk autoconf bash \
		alpine-baselayout \
		alpine-keys \
		libressl2.7-libcrypto \
		libressl2.7-libssl \
		zlib \
		scanelf \
		libc-utils \
		apk-tools \
		musl \
		musl-utils \
		pcre \
		ca-certificates \
		ncurses-terminfo-base \
		ncurses-terminfo \
		ncurses-libs \
		pkgconf \
		ncurses-dev \
		zlib-dev \
		libcrypto1.1 \
		libssl1.1 \
		openssl-dev \
		readline \
		unixodbc \
		unixodbc-dev && \
		rm -rf /var/cache/apk/* && \
	: Installing kerl && \
		curl -O https://raw.githubusercontent.com/kerl/kerl/master/kerl && \
		chmod a+x kerl && \
		mv kerl /usr/local/bin && \
		kerl build 19.3 19.3 && \
		kerl install 19.3 ~/erlang/19.3 && \
		echo 'export PATH="$HOME/erlang/19.3/bin:$PATH"' >> ~/.bashrc && \
		echo 'export PATH="$HOME/erlang/19.3/activate:$PATH"' >> ~/.bashrc && \
		echo 'export PATH="$HOME/.kiex/scripts/kiex:$PATH"' >> ~/.bashrc && \
		source ~/.bashrc && \
		cd /tmp && \
		git clone https://github.com/taylor/kiex.git && \
		cd /kiex && \
		./install && \
		bash kiex install 1.3.4 && \
		bash kiex use 1.3.4 --default && \
		mix local.hex --force && \
		mix local.rebar --force && \
	: Installing Phoenix && \
		TEMP=https://github.com/phoenixframework/archives/raw/master && \
		mix archive.install $TEMP/phoenix_new-1.2.5.ez --force
