# Create new business entries.
# © 2013 onarray Ltd <http://www.onarray.com>

all: new

new:
	@read -p "Title: " title; \
	url=$$(echo "$$title" | sed \
		-e "s/\(.*\)/\L\1/" \
		-e "s/\&/and/g" \
		-e "s/\s\+/-/g" \
		-e "s/[^a-z0-9-]//g"); \
	out="$$url.md"; \
	echo "---" >> "$$out"; \
	echo "title: $$title" >> "$$out"; \
	echo "date: $$(date +'%F %T %z')" >> "$$out"; \
	echo "url:" >> "$$out"; \
	echo "twitter:" >> "$$out"; \
	echo "tagline:" >> "$$out"; \
	echo "---" >> "$$out"; \
	echo "" >> "$$out"; \
	echo "[description]" >> "$$out"
