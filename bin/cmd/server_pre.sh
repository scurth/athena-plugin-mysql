CMD_DESCRIPTION="start mysql server"

athena.usage 2 "<dbdata directory> <port>"

# arguments are found below
dbdata="$(athena.path 1)"
port="$(athena.arg 2)"

athena.docker.add_option "-ti"

athena.docker.mount_dir "${dbdata}" /var/lib/mysql

athena.docker.add_option "-p $port:3306"

# clearing arguments from the stack
athena.pop_args 1

