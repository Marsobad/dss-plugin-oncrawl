PLUGIN_VERSION=1.1.0
PLUGIN_ID=oncrawl
plugin:
    cat plugin.json|json_pp > /dev/null
    rm -rf dist
    mkdir dist
    zip --exclude "*.pyc" -r dist/dss-plugin-${PLUGIN_ID}-${PLUGIN_VERSION}.zip code-env custom-recipes js plugin.json python-lib resource

