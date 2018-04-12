SRC = README.me
TARGET = ${SRC:%.me=%.pdf}

.PHONY: all
all: ${TARGET}

%.pdf : %.me
	@echo "creating " $@
#       @groff -me $< | pstopdf -i -o $@
        @groff -me -Tpdf $< > $@
	
.PHONY: clean
clean:
	@echo "removing " ${TARGET}
	@rm -f ${TARGET} ${SRC}~
