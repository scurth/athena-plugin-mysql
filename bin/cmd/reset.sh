athena.info "deleting dbdata ..."
rm -rf /var/lib/mysql/* && athena.ok "done."


athena.info "initialize datastructure ..."
mysqld --no-defaults --datadir=/var/lib/mysql --initialize-insecure --explicit-defaults-for-timestamp --log-error-verbosity=1 && athena.ok "done."
