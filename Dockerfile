FROM ubuntu:22.04
RUN apt update && apt install -y \
	python3-pip python3.11-dev python3.11-venv libopenal-dev libsdl2-dev libvorbis-dev cmake clang-format rsync \
	&& rm -rf /var/lib/apt/lists/* \
	&& mkdir /BombSquad_Server
COPY BombSquad_Server /BombSquad_Server/
WORKDIR /BombSquad_Server
ENTRYPOINT ./bombsquad_server
