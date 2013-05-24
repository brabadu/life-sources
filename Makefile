build:
	jekyll build
	touch _site/.nojekyll
	cd _site; git checkout gh-pages
	cd _site; git add .
	cd _site; git commit -m 'Update site'
	cd _site; git push origin
	git add _site
	git ci -m 'Update site'
	git push origin