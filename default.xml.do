exec >&2
set -eu
. ./do-env
redo-ifchange "$1.template"
vars="$(grep -E -o '^\s*version=.*' "$1.template")"
if fgrep -q '{arch}' "$1.template"; then
	redo-ifchange ARCH
	vars="$vars arch=$(cat ARCH)"
fi
0template -o "$3" "$1.template" $vars
