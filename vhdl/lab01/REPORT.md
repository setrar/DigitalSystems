

- [ ] Install [`ghdl`](https://ghdl.github.io/ghdl/)

```
brew install ghdl
==> Downloading https://github.com/ghdl/ghdl/releases/download/v3.0.0/ghdl-macos-11-llvm.tgz
==> Downloading from https://objects.githubusercontent.com/github-production-release-asset-2e65be/46439446/6de5fb33-49d
################################################################################################################ 100.0%
==> Installing Cask ghdl
==> Linking Binary 'ghdl' to '/opt/homebrew/bin/ghdl'
🍺  ghdl was successfully installed!
```

```
ghdl help
```
> Returns
```powershell
usage: ghdl COMMAND [OPTIONS] ...
COMMAND is one of:
analyze [OPTS] FILEs
  Analyze one or multiple VHDL files
  aliases: -a, analyse
elaborate [OPTS] UNIT [ARCH]
  Elaborate design UNIT
  alias: -e
run UNIT [ARCH] [RUNOPTS]
  Run design UNIT
  alias: -r
elab-run [OPTS] UNIT [ARCH] [RUNOPTS]
  Elaborate and run design UNIT
  alias: --elab-run
bind [OPTS] UNIT [ARCH]
  Bind design UNIT
  alias: --bind
link [OPTS] UNIT [ARCH]
  Link design UNIT
  alias: --link
list-link [OPTS] UNIT [ARCH]
  List objects file to link UNIT
  alias: --list-link
compile [OPTS] FILEs -e UNIT [ARCH]
  Generate whole sequence to elaborate design UNIT from FILEs
  alias: -c
make [OPTS] UNIT [ARCH]
  Make design UNIT
  alias: -m
gen-makefile [OPTS] UNIT [ARCH]
  Generate a Makefile for design UNIT
  alias: --gen-makefile
gen-depends [OPTS] UNIT [ARCH]
  Generate dependencies of design UNIT
  alias: --gen-depends
disp-config
  Display tools path
  aliases: --disp-config, dispconfig, --dispconfig
bootstrap-std
  (internal) Compile std.standard
  alias: --bootstrap-standard
synth [FILES... -e] UNIT [ARCH]
  Synthesis from UNIT
  alias: --synth
import [OPTS] FILEs
  Import units of FILEs
  alias: -i
syntax [OPTS] FILEs
  Check syntax of FILEs
  alias: -s
dir [LIBs]
  Display contents of the libraries
  alias: --dir
files FILEs
  Display units in FILES
  alias: -f
clean
  Remove generated files
  alias: --clean
remove
  Remove generated files and library file
  alias: --remove
copy
  Copy work library to current directory
  alias: --copy
disp-standard
  Disp std.standard in pseudo-vhdl
  alias: --disp-standard
elab-order [--libraries] [OPTS] UNIT [ARCH]
  Display ordered source files
  alias: --elab-order
find-top
  Display possible top entity in work library
  alias: --find-top
chop [OPTS] FILEs
  Chop FILEs
  alias: --chop
lines FILEs
  Precede line with its number
  alias: --lines
reprint [OPTS] FILEs
  Redisplay FILEs
  alias: --reprint
fmt [OPTS] FILEs
  Format FILEs
  alias: --format
compare-tokens [OPTS] REF FILEs
  Compare FILEs with REF
  alias: --compare-tokens
pp-html FILEs
  Pretty-print FILEs in HTML
  alias: --pp-html
xref-html FILEs
  Display FILEs in HTML with xrefs
  alias: --xref-html
xref FILEs
  Generate xrefs
  alias: --xref
--vpi-compile CMD ARGS
  Compile with VPI/VHPI include path
--vpi-link CMD ARGS
  Link with VPI/VHPI library
--vpi-cflags
  Display VPI/VHPI compile flags
--vpi-ldflags
  Display VPI/VHPI link flags
--vpi-include-dir
  Display VPI/VHPI include directory
--vpi-library-dir
  Display VPI/VHPI library directory
--vpi-library-dir-unix
  Display VPI/VHPI library directory (unix form)
file-to-xml FILEs
  Dump AST in XML
  alias: --file-to-xml
--libghdl-name
  Display libghdl name
--libghdl-library-path
  Display libghdl library path
--libghdl-include-dir
  Display libghdl include directory
help [CMD]
  Display this help or [help on CMD]
  aliases: -h, --help
version
  Display ghdl version
  aliases: -v, --version
opts-help
  Display help for analyzer options
  alias: --options-help

To display the options of a GHDL program,
  run your program with the 'help' option.
Also see 'opts-help' for analyzer options.

Please, refer to the GHDL manual for more information.
Report issues on https://github.com/ghdl/ghdl
```