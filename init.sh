git clone https://github.com/ankicommunity/anki-sync-server.git
git clone https://github.com/Nriver/anki-web-server.git

cp Dockerfile.sync anki-sync-server/src/Dockerfile
cp Dockerfile.web anki-web-server/Dockerfile

# remove pyaudio from anki-sync-server as we do not need it
sed -i '/pyaudio/d' anki-sync-server/src/requirements.txt

# anki sync server will keep lock the database for a long time even after close anki desktop
# to avoid that, we need to change the value of monitor_frequency and monitor_inactivity in to a small value

sed -i 's/monitor_frequency = 15/monitor_frequency = 1/g' anki-sync-server/src/ankisyncd/thread.py

sed -i 's/monitor_inactivity = 90/monitor_inactivity = 3/g' anki-sync-server/src/ankisyncd/thread.py