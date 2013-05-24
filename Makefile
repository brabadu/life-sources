build:
	jekyll build
	touch _site/.nojekyll
	cd _site; git add .
	cd _site; git ci -m 'Update site'
	cd _site; git push origin