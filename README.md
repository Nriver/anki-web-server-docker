# anki-web-server-docker
This is a demo docker config for anki-sync-server and anki-web-serber.

# how to use
Execute the following

```
./init.sh
docker-compose up -d
```

Open http://127.0.0.1:27702/ankiweb/login/, the default username/password is demo/demo.
And anki-sync-server is on 127.0.0.1:27701, which you can use with other anki clients(ankidroid, anki desktop, etc.).

Be aware that due to the design of Anki, you can not run two different clients with same account at the same time.

# update
run
```
docker-compose build
```

if submodule need to update, try:
```
cd anki-web-server
git pull origin master
```

# https support
If you are serving this with https, find docker_files/ankiweb.conf and change force_https to True.