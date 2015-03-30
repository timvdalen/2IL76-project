main = presentation

IMGS = img2/empty.pdf img2/network_example1.pdf img2/network_example2.pdf img2/network_example3.pdf img2/network1.pdf img2/network2.pdf img2/network3.pdf img2/network4.pdf img2/network5.pdf img2/network6.pdf img2/observers.pdf img2/observers_line_of_sight.pdf img2/observers_line_of_sight_all.pdf img2/observers_line_of_sight_one.pdf img2/terrain.pdf img2/observers_visibility.pdf

.SECONDARY: $(IMGS)

all: once.a

img2/%.pdf: img2/%.svg
	convert $< $@

once.%: $(IMGS)
	pdflatex $(main)

clean:
	rm -f $(IMGS)
	rm -f $(main).{aux,log,toc,out,nav,snm}

remove: clean
	rm -f $(main).pdf

release: remove once.a once.b once.c
