
RM="${RM-rm -f}"
CAT="${CAT:-cat}"
WGET="${WGET:-wget}"
ECHO="${ECHO:-echo}"
GREP="${GREP:-grep}"
REMOTE_HOST="${REMOTE_HOST:-https://raw.githubusercontent.com}"
REMOTE_USER="${REMOTE_USER:-mrdoob}"
REMOTE_PATH="${REMOTE_PATH:-master/build}"
REMOTE_PROJECT="${REMOTE_PROJECT:-three.js}"
REMOTE_FILES="three.js three.min.js"

declare -a PKG_FILES=(
  "bower.json"
  "package.json"
  "composer.json"
  "component.json"
)

$ECHO "Purging..."
$RM ${REMOTE_FILES}

## https://raw.githubusercontent.com/mrdoob/three.js/master/build/three.js
for file in ${REMOTE_FILES}; do
  $ECHO "Fetching latest ($file).."
  $WGET "${REMOTE_HOST}/${REMOTE_USER}/${REMOTE_PROJECT}/${REMOTE_PATH}/${file}"
done

"${EDITOR:-vim}" ${PKG_FILES[@]}
