FROM ubuntu:18.04

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Install ROS2
RUN \
    apt-get update && apt-get install -y locales \
    && locale-gen en_US en_US.UTF-8  \
	&& update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 \
	&& export LANG=en_US.UTF-8 \
	&& apt update \
	&& apt install -y curl gnupg2 lsb-release \
	&& curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add - \
	&& sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list' \
	&& apt-get update && apt-get install -y \
		ros-dashing-desktop \
		python3-argcomplete \
	&& rm -rf /var/lib/apt/lists/*

# Install for convenience
RUN \
	apt-get update && apt-get install -y \
		tmux \
		zsh \
		curl \
		wget \
		vim \
		git \
		sudo \
		libgl1-mesa-glx \
		libgl1-mesa-dri \
		mesa-utils \
		unzip \
		software-properties-common \
	&& rm -rf /var/likb/apt/lists/*

# Setup ZSH
RUN \
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true \
	&& curl -L git.io/antigen > ~/.oh-my-zsh/antigen.zsh

CMD ["zsh"]
