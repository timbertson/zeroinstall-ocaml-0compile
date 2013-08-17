exec >&2
set -eux
redo-ifchange "$1.template"
0template -o "$3" "$1.template" version=1.1.6 archive="http://mjambon.com/releases/yojson/yojson-1.1.6.tar.gz"
rm -rf "ocaml-yojson-src/"
