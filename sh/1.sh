#!/bin/bash

>get.html
>html_resultado.txt
>html_dados.txt
>out.txt
>out.txt2

#[ $? -ne 1 ] && echo "ERRO!Definir variavel!"; exit 1

curl -o get.html http://www.uol.com.br

grep "$1" get.html | grep "html" | cut -d"\"" -f2 | sort -u >html_resultado.txt

cat html_resultado.txt | uniq | while read line 
do
	echo $line	
	curl -o html_dados.txt $line
	cat html_dados.txt | grep "$1" | grep "data-share-twitter-text" | cut -d"=" -f6 | cut -d"\"" -f2 >>out.txt
done

cat out.txt | uniq  | sed '#\&\#231\;\&\#227\;#ca#g' >out.txt2 

cat out.txt2
