#!/bin/sh -l

set -e

/usr/local/bin/php-cs-fixer --version
PHP_CS_FIXER_IGNORE_ENV=1 /usr/local/bin/php-cs-fixer fix $*
