CMD_DESCRIPTION="reset mysql server"

athena.docker.add_option "-ti"

athena.usage 1 "<dbdata directory>"

# arguments are found below
dbdata="$(athena.path 1)"


athena.docker.mount_dir "${dbdata}" /var/lib/mysql

