default: develop

install:
	bundle install

develop: install
	bundle exec jekyll serve --livereload

build: install
	bundle exec jekyll build

check_links: build
	bundle exec htmlproofer --ignore_empty_alt true --ignore_missing_alt true --enforce_https false --swap_urls "^\/ecen192:" --ignore_status_codes "0,200,301,302,403,429,999" ./_site
