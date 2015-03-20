main = presentation

all: once.a

once.%:
	pdflatex $(main)

clean:
	rm -f $(main).{aux,log,toc,out}

remove: clean
	rm -f $(main).pdf

release: remove once.a once.b once.c
