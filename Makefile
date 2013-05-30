.PHONY: build

build: check-commitmessage
	jekyll build
	touch _site/.nojekyll
	cd _site; git checkout gh-pages
	cd _site; git add .
	cd _site; git commit -m "$(m)"
	cd _site; git push origin
	git add _site
	git add _posts
	git ci -m "$(m)"
	git push origin

check-commitmessage:
	if test "$(m)" = "" ; then \
		echo "Commit message (m) not set"; \
		exit 1; \
	fi