all: thumbor
	sudo docker run -p 80:80 -v /data:/data -v /logs:/logs vtexlab/thumbor
thumbor: .
	sudo docker build -t vtexlab/thumbor .
