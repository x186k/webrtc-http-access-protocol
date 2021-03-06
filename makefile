#
# Makefile to build Internet Drafts from markdown using mmark
#
# There is now a separate "Makefile-docker" file with info about how
# to run mmark using the Docker image.
#

SRC  := $(wildcard draft-*.md test.md)
TXT  := $(patsubst %.md,%.txt,$(SRC))
HTML  := $(patsubst %.md,%.html,$(SRC))
CWD  := `pwd`

# Ensure the xml2rfc cache directory exists locally
IGNORE := $(shell mkdir -p $(HOME)/.cache/xml2rfc)

all: $(TXT) $(HTML)


%.txt: %.xml
	xml2rfc --v3 --text -o $@ $<

%.html: %.xml
	xml2rfc --v3 --html -o $@ $<

%.xml: %.md
	mmark < $< > $@

clean:
	rm -f draft-*.txt draft-*.html draft-*.xml


#keep intermediate xml, etc.
#.SECONDARY