docker build -t docker.yihecloud.com/openbridge/falcon-base .
docker build -t docker.dev.yihecloud.com/openbridge/falcon-judge:1.1 .
docker push docker.dev.yihecloud.com/openbridge/falcon-judge:1.1
docker tag docker.dev.yihecloud.com/openbridge/falcon-judge:1.1 docker.yihecloud.com/openbridge/falcon-judge:1.1
docker push docker.yihecloud.com/openbridge/falcon-judge:1.1

https://docker.yihecloud.com/auth/registry/repos/openbridge/falcon-judge/_tags
https://docker.dev.yihecloud.com/auth/registry/repos/openbridge/falcon-judge/_tags

docker login admin
admin/admin@123
#192.168.1.135
sh monitor.sh -h 192.168.10.82 -u root -p 123456 --proxy=https://paas.demo.yihecloud.com

#进入后，可以测试命令
docker run --rm -ti  docker.yihecloud.com/openbridge/falcon-base bash
