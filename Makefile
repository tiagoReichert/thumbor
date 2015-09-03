all: thumbor
	sudo docker run -p 80:80 -v /data:/data -v /logs:/logs -v /nginx-cache:/nginx-cache -v /nginx-cache-thumbor:/nginx-cache-thumbor  vtexlab/thumbor > out.log 2>&1 & 
thumbor: .
	sudo docker build -t vtexlab/thumbor .
clean:
	sudo docker rm -f $(instance)
open: all
	sudo docker exec -ti $(instance) /bin/bash
instance=$(shell sudo docker ps | grep vtexlab/thumbor | awk '{print $$1}')
