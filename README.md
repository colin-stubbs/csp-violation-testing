# csp-violation-testing

Directory structure to serve up via Apache that can be used to trigger all possible CSP Level 2 violations.

The top level index.html iframe's all of the individual directories that are currently available in order to trigger all violation types in one request.

.htaccess files in each directory generate different CSP header responses necessary to allow pre-requisites for triggering violations.

As an example. the .htaccess in the top level directory permits frame-src 'self' in order to permit the iframe'ing to occur.
