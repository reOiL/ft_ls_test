#!/bin/bash

function test {
	result=$(./exec.sh $@ 2>/dev/null)
	if [[ -z "$result"  ]]
	then
		printf "\e[32mTest: passed!\e[0m\n"
	else
		printf "\e[91mTest: failed!\e[0m\n"
		printf "$> %s\n%s\n" "ls $@" "$result"
	fi
	#printf "\n\n\nVALGRIND: %s\n\n\n" "$(./valgrind.sh $@)"
}

test ~
test -rf
test -tf
test /
test ~ /
test ~ ~ ~
test ~/ ~// ~/// ~////

test -l ~
test -l -rf
test -l -tf
test -l /
test -l ~ /
test -l ~ ~ ~
test -l ~/ ~// ~/// ~////

test -R ~/Library
test -lR ~/Library

test -U ~/
test -lU ~/
test -u ~/
test -lu ~/

test -R ~/Library ~/Desktop
test -lR ~/Library ~/Desktop

test -Uf ~/
test -uf ~/
test -lUf ~/
test -luf ~/

test -R -l ~/Desktop
test -R -l -f ~/Desktop

test -l -2 ~/Desktop
test -2 ~/Desktop

test -R ~
test -Rl ~

test // /
test -d // /

test -l // /
test -dl // /

test -l /bin/ls /bin/date /bin/ksh
test /bin/ls /bin/date /bin/ksh

test -l /bin/ls /bin/date /bin/ksh /bin
test /bin/ls /bin/date /bin/ksh /bin

test ./../ft_ls -Rta ../
test /dev/
test -l /dev/
test /dev/fd
test -l /dev/fd


#test -R /
#test -Rl /
