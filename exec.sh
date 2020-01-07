#!/bin/bash
timestamp() {
	  date +"%T"
}
#OUT=TEST/$(timestamp)
#mkdir -p $OUT

#/Users/jwebber/projects/ft_ls/ft_ls "$@" >  $OUT/ft_ls.txt
#/bin/ls "$@" > $OUT/ls.txt
diff <(echo "$(/Users/jwebber/jwebber/ft_ls $@)" ) <(echo "$(/bin/ls $@)") # $OUT/ft_ls.txt $OUT/ls.txt > $OUT/diff
#cat $OUT/diff

#echo "$@" > $OUT/params
