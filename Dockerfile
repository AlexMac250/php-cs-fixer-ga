FROM php:8.4.1-alpine

LABEL "com.github.actions.name"="PHP-CS-Fixer"
LABEL "com.github.actions.description"="check php files"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/alexmac250/php-cs-fixer-ga"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Aleksand Vasilenko <alex.forbits@gmail.com>"

ENV VERSION=3.67.1

RUN wget https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v$VERSION/php-cs-fixer.phar -O php-cs-fixer \
    && chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

RUN export PHP_CS_FIXER_IGNORE_ENV=1

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
