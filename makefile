test: test-cedar-14

test-cedar-14:
	@echo "Running tests in docker (cedar-14)..."
	@docker run -e "FIREBASE_TEST_ADMIN_USER=${FIREBASE_ADMIN_USER}" -e "FIREBASE_TEST_ADMIN_PASS=${FIREBASE_ADMIN_PASS}" -v $(shell pwd):/buildpack:ro --rm -it heroku/cedar:14 bash -c 'cp -r /buildpack /buildpack_test; cd /buildpack_test/; test/run;'
	@echo ""

shell:
	@echo "Opening cedar-14 shell..."
	@docker run -e "FIREBASE_TEST_ADMIN_USER=${FIREBASE_ADMIN_USER}" -e "FIREBASE_TEST_ADMIN_PASS=${FIREBASE_ADMIN_PASS}" -v $(shell pwd):/buildpack:ro --rm -it heroku/cedar:14 bash -c 'cp -r /buildpack /buildpack_test; cd /buildpack_test/; test/run; bash'
	@echo ""
