while :
do

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%120))
	b=2000
	c=$(($a+$b))

	w=$(($RANDOM%300))
	e=200
	aaram=$(($w+$e))
	timeout -k 5 $c\s  ./1.19/lolMiner --coin BEAM --pool us.cruxpool.com:3333 --user 2f9d9ede030dd7c26f9e05bb0180f8f9d4988ab24825c74b23ba1ce726d247ebe19.kartik3310 --disablewatchdog
	timeout -k 5 2s pgrep lolMiner | xargs kill
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
