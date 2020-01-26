t:
	node tests/t_test.js
	node tests/collection_test.js
	node tests/fs_test.js
	node tests/assert_test.js
links:
	npm link
	cd example && npm link pits
suite:
	cd example && node -e 'require("pits").extract()'
newman: suite
	newman run example/test.postman_collection.json
