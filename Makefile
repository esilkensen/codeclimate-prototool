.PHONY: image test

IMAGE_NAME ?= codeclimate/codeclimate-prototool-lint

image:
	docker build --tag "$(IMAGE_NAME)" .

test:
	docker run --rm -v $(PWD):/code $(IMAGE_NAME) | diff test/expected -
