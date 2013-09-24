if [ -n "$REDO_XTRACE" ]; then
	exec >&2
else
	exec >/dev/null
fi
set -eu
. ./do-env
redo-ifchange "$2.xml"
if [ -f "$2.deps" ]; then
	redo-ifchange $(cat "$2.deps")
else
	redo-ifcreate "$2.deps"
fi
if [ ! -d "$2" ]; then
	0compile setup "$2.xml"
fi
(cd "$2" && 0compile build --clean)
mv "$2" "$3"
rm -rf "$1" || (chmod -R u+w "$1" && rm -rf "$1")
