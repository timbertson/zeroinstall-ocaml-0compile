exec >&2
set -eux
redo-ifchange HEAD.tar.gz
redo-ifchange ARCH
redo-ifchange "$1.template"
0template -o "$3" "$1.template" arch="$(cat ARCH)"
