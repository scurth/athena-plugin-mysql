CMD_DESCRIPTION="reset mysql server"

athena.docker.add_option "-ti"

athena.docker.mount_dir ~/sandbox/dbdata /var/lib/mysql

