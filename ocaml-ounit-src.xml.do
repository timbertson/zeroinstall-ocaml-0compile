exec >&2
set -eux
redo-ifchange "$1.template"
0template -o "$3" "$1.template" version=1.1.2 archive="http://forge.ocamlcore.org/frs/download.php/886/ounit-1.1.2.tar.gz"
