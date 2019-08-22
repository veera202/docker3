FROM ubuntu:18.04

RUN apt update && apt upgrade -y \
	&& apt install -y \
		curl \
		wget \
		tmux \
	&& rm -rf /var/lib/apt/lists/* # best practice to remove apt install stuff

CMD ["bash"]
