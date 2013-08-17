exec >&2
set -eux
(cd ~/dev/0install/zeroinstall && (git stash create || git name-rev HEAD)) | tee "$3" | redo-stamp
