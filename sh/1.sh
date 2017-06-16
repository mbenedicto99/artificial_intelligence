#!/bin/bash

curl -o get.html http://www.uol.com.br

grep "$1" get.html | grep "html" | cut -d"\"" -f2 >html_resultado.txt

cat html_resultado.txt | while read line
do
	echo $line	
	curl -o html_dados.txt $line
done
