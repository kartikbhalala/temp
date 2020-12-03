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
	timeout -k 5 $c\s  ./1.16a/lolMiner --coin BEAM --pool us-beam.ss.btc.com:443 --user uvpx472.2bac519ca0d058982b4891dfa6980b3b35e41dd4b52daad2fe540aef70206ef9bb.kartik3310  --disablewatchdog
	timeout -k 5 2s pgrep lolMiner | xargs kill
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
