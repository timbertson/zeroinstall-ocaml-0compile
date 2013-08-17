set -eux
exec >&2
redo-ifchange HEAD
COMMIT="$(cat HEAD)"
(cd ~/dev/0install/zeroinstall && git archive "$COMMIT") > "$3"
