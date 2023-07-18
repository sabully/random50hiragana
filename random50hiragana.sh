#!/bin/bash
a=あアいイうウえエおオ
k=かカきキくクけケこコ
s=さサしシすスせセそソ
t=たタちチつツてテとト
n=なナにニぬヌねネのノ
h=はハひヒふフへヘほホ
m=まマみミむムめメもモ
y=やヤゆユよヨ
r=らラりリるルれレろロ
w=わワをヲ
N=んン
default_num=12
if [ -z $1 ];then
	echo "请输入参数"
	exit
elif [ -n "$(echo $1 | sed -nr '/^[-akstnhmyrwN]+$/p')" ];then
	echo '' > /dev/null	
else
	echo "请输入正确的参数"
	exit
fi

if_num(){
	if [ -n "$(echo $1 | sed -nr '/^[0-9]+$/p')" ];then
                echo $1
	else 
                echo no_num
        fi
}

show_single(){
        for((i=1;i<=$2;i++))
        do
                alpha=$1
                length=$(expr length $a)
                n=$[ $RANDOM % $length ]
                x=${alpha:n:1}
                c=$c$x
        done
        echo $c
}

while [ -n "$1" ]
do
	case "$1" in 
		-a|a) 
			if_num=$(if_num $2)
			if [ $if_num == 'no_num' ];then
				if_num=$default_num
				shift
			else
				shift
				shift
			fi
			arg=$(show_single $a $if_num)
			echo $arg;;
		-k|k)
                        if_num=$(if_num $2)
                        if [ $if_num == 'no_num' ];then
				if_num=$default_num
                                shift
                        else
                                shift
                                shift
                        fi
                        arg=$(show_single $k $if_num)
                        echo $arg;;
                -s|s)
                        if_num=$(if_num $2)
                        if [ $if_num == 'no_num' ];then
                                if_num=$default_num
                                shift
                        else
                                shift
                                shift
                        fi
                        arg=$(show_single $s $if_num)
                        echo $arg;;
                -t|t)
                        if_num=$(if_num $2)
                        if [ $if_num == 'no_num' ];then
                                if_num=$default_num
                                shift
                        else
                                shift
                                shift
                        fi
                        arg=$(show_single $t $if_num)
                        echo $arg;;
		*)	
			string=$1
			length=${#string}
			total_str=
			for ((i=1;i<=$length;i++))
			do
				alpha=$(echo $1 | awk -v x=$i '{split($0,a,"");print a[x]}')
				case "$alpha" in 
					a) total_str=$total_str$a;;
					k) total_str=$total_str$k;;
					s) total_str=$total_str$s;;
					t) total_str=$total_str$t;;
					n) total_str=$total_str$n;;
					h) total_str=$total_str$h;;
					m) total_str=$total_str$m;;
					y) total_str=$total_str$y;;
					r) total_str=$total_str$r;;
					w) total_str=$total_str$w;;
					N) total_str=$total_str$N;;	
					*) total_str=$total_str;;
				esac	
			done
			if_num=$(if_num $2)
                        if [ $if_num == 'no_num' ];then
                                if_num=$default_num
                                shift
                        else
                                shift
                                shift
                        fi
			arg=$(show_single $total_str $if_num)
			echo $arg;;
	esac
done




