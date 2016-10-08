# here is where you add you the instructions that should run inside the container

if [ "$(ls -A /var/lib/mysql)" ]
then
  athena.info "starting mysql server"
  service mysql start
else
  athena.err "db data structure not initialized"
  athena.exit 1
fi

athena.info "starting mysql client..."
mysql

athena.info "stopping mysql server ..."
mysqladmin shutdown
