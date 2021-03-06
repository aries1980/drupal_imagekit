#!/bin/bash

# Run either PHPUnit tests or PHP_CodeSniffer tests on Travis CI, depending
# on the passed in parameter.

MODULE_NAME="imagekit"

case "$1" in
    PHP_CodeSniffer)
        cd $MODULE_DIR
        composer install
        ./vendor/bin/phpcs
        exit $?
        ;;
    *)
        ln -s $MODULE_DIR $DRUPAL_DIR/modules/$MODULE_NAME
        cd $DRUPAL_DIR
        ./vendor/bin/phpunit --coverage-clover=coverage.xml -c ./core/phpunit.xml.dist $MODULE_DIR/tests
        exit $?
esac
