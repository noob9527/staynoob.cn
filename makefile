
build:
	docker build -t staynoob.cn .

# ex: $ make copy-image user=user host=host
copy-image:
	docker save staynoob.cn | gzip | \
     ssh $(user)@$(host) 'zcat | docker load'