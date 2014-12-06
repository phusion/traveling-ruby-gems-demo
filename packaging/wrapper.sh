#!/bin/bash
set -e

# Figure out where this script is located.
SELFDIR="`dirname \"$0\"`"
SELFDIR="`cd \"$SELFDIR\" && pwd`"

# Tell Bundler where the Gemfile and gems are.
export BUNDLE_GEMFILE="$SELFDIR/vendor/Gemfile"

# Run the actual app using the bundled Ruby interpreter, with Bundler activated.
exec "$SELFDIR/runtime/bin/ruby" -rbundler/setup "$SELFDIR/app/hello.rb"
