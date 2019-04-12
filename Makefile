TXTDIR=sources
MDS=$(wildcard $(TXTDIR)/*.md)
HTMLS=$(patsubst $(TXTDIR)/%.md,%.html,$(MDS))

.PHONY : all

all : $(HTMLS)

%.html : $(TXTDIR)/%.md
	pandoc -f markdown -t html -s $< -o $@

clean:
	rm $(HTMLS)
