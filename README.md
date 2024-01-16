aaa




sed -i "$(sed -n '/./{x;p;x};${=;}' docker-entrypoint.sh | sed -n '$p')i ciao come stai" docker-entrypoint.sh


sed "$(sed -n '/./{x;p;x};${=;}' docker-entrypoint.sh)s/$/ciao come stai/" docker-entrypoint.sh
