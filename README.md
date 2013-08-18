This repo is experimental - it'll likely be removed once there's a more official replacement.

The idea is to build 0install's ocaml backend (including ocaml dependencies) using 0compile itself.

# Requirements:

Probably something like:

 * ocaml
 * ocaml-findlib (ocamlfind binary)
 * 0install
 * 0compile

# Building:

	$ 0install run http://gfxmonk.net/dist/0install/redo.xml all

Or something other than `all` if you want to build an individual target.
Generally the most interesting target is `<feed-name>.0compile`

# Hacky stuff:

edit the ARCH file if you're not on linux-x86_64

None of the feeds have URIs, they're all using relative paths. So you can't use
`0compile autocompile` or publish this stuff anywhere yet.

# What happens?

Stuff gets built via:

	*.xml.template -> *.xml
	*.xml -> *.0compile

Also, all the dependency sources will get downloaded (once) into the current directory.
