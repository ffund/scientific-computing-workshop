GITFILES=git-basic-workflow.pdf
GITFILES+=git-commit-branch.pdf
GITFILES+=git-resolve-conflicts.pdf
GITFILES+=git-intro.pdf

LNXFILES=linux-assignment.pdf
LNXFILES+=linux-files-directories.pdf
LNXFILES+=linux-loops-conditionals.pdf
LNXFILES+=linux-manipulate.pdf
LNXFILES+=linux-navigating.pdf
LNXFILES+=linux-scripts.pdf
LNXFILES+=linux-shell.pdf

EXTRA=warmup.pdf

PYFILES=python-hello.pdf
PYFILES+=python-read-in-data.pdf
PYFILES+=python-lists-arrays.pdf
PYFILES+=python-citibike.pdf

PANDOCFLAGS=--latex-engine=xelatex \
         -V mainfont='Fira Sans' \
         -V geometry:margin=1in \
         --listings -H style/listings-setup.tex -H style/keystroke-setup.tex -H style/includes.tex

%.pdf: %.md
	pandoc $^ $(PANDOCFLAGS) -o $@ 

all: $(LNXFILES) $(GITFILES) $(PYFILES) $(EXTRA)

linux: $(LNXFILES)

git: $(GITFILES)

python: $(PYFILES)

clean: 
	rm -f *.pdf
