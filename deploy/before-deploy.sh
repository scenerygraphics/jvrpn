#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    openssl aes-256-cbc -K $encrypted_0b58babf1be7_key -iv $encrypted_0b58babf1be7_iv -in deploy/codesigning.asc.enc -out deploy/codesigning.asc -d
    gpg2 --fast-import deploy/codesigning.asc
fi
