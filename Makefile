IMAGE_BUILDER?=podman
IMAGE_REPO?=quay.io/itroyano
VERSION?=0.0.0

image-build:
	$(IMAGE_BUILDER) build -t $(IMAGE_REPO)/test-ukv-db:$(VERSION) .

image-push:
	$(IMAGE_BUILDER) push $(IMAGE_REPO)/test-ukv-db:$(VERSION)