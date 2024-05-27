TEX=xelatex

.PHONY: english spanish clean all

.RECIPEPREFIX = >

english:
>   $(TEX) CvCristhianVegaCortesEng.tex

spanish:
>   $(TEX) CvCristhianVegaCortesSpa.tex

all: english spanish clean 
>

clean: 
>   rm *.out
>   rm *.aux
>   rm *.log
