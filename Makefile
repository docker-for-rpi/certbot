REPO ?= forrpi/certbot
TAG  ?= 0.26.1

build: Dockerfile
	docker build --rm  -t $(REPO):$(TAG) .
	docker tag $(REPO):$(TAG) $(REPO):latest

push:
	docker push $(REPO):$(TAG)
	docker push $(REPO):latest
