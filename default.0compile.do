exec >&2
set -eux
redo-ifchange "$2.xml"
redo-ifcreate "$2.deps"
if [ -f "$2.deps" ]; then
	redo-ifchange "$(cat "$2.deps")"
fi
if [ ! -d "$2" ]; then
	0compile setup "$2.xml"
fi
(cd "$2" && 0compile build --clean)
mv "$2" "$3"
rm -rf "$1"
