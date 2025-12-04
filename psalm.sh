# install psalm
composer require --dev vimeo/psalm

# init config interactively (or create psalm.xml)
./vendor/bin/psalm --init

# run scan
./vendor/bin/psalm --show-info=false \
    --threads=4 \
    --taint-analysis \
    --report=results-php.sarif