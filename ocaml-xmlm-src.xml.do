exec >&2
set -eux
redo-ifchange "$1.template"
0template -o "$3" "$1.template" version=1.1.1 archive="http://erratique.ch/software/xmlm/releases/xmlm-1.1.1.tbz"
