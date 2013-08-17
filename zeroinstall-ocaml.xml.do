exec >&2
set -eux
redo-ifchange HEAD.tar
redo-ifchange "$1.template"
0template -o "$3" "$1.template"
