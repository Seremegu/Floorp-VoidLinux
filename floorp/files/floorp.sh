#!/bin/sh

# Script to install/update the Floorp Browser xbps-src template
#
# Requirements: xbps-src, curl, sed, xtools
#
# You have to set the XBPS_DISTDIR environment variable.
# Example: export XBPS_DISTDIR="$HOME/void-packages"

if [ -z "$XBPS_DISTDIR" ]; then
  echo "Please set the XBPS_DISTDIR environment variable to your xbps-src directory."
  exit 1
fi

cd "$XBPS_DISTDIR" || exit 1

release_url=$(curl -Ls -o /dev/null -w '%{url_effective}' https://github.com/Floorp-Projects/Floorp/releases/latest)
release_tag=$(basename "$release_url")
release_tag=$(echo "$release_tag" | sed 's/-//g')
echo "Downloading Floorp Browser $release_tag"

sed -i 's/version=[a-zA-Z0-9.-]\+/version='"$release_tag"'/' "srcpkgs/floorp/template" && echo "Updated the version in the template to $release_tag."

xgensum -i floorp && echo "Generated the checksum."

./xbps-src pkg floorp && echo "Package has been built."

xi floorp && echo "Installed Floorp Browser $release_tag!"
