# docker_dns
DockerでUnboundを動かします。

docker-compose.ymlのportsの箇所を

```
    - "192.168.xxx.xxx:53:53"
    - "192.168.xxx.xxx:53:53/udp"
```

のように固定させたいIPアドレスを設定します。

unbound.confのaccess-controlやforward-zoneなどを環境に応じ設定します。

conf/unbound.conf.d配下の.confを読むようにしているので、そこにDNSレコード設定ファイルを配置します。


```
docker-compose up -d
```

で起動します。

