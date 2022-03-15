all: init release

init:
	git submodule update --init

release:
	zip -r release.zip . -x "node_modules/*" "tests/*" "vendor/*" ".github/*" ".git/*"