exec >&2
set -eux
redo-ifchange "$1.template"
vars="$(grep -E -o '^\s*version=.*' "$1.template")"
0template -o "$3" "$1.template" $vars
