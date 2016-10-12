athena-plugin-mysql
===================

This plugin is used to quickly start a mysql server for testing purpose or data crunching.

## Jump to section
* [Athena OSS] (#athena-oss)
* [Usage] (#usage)
* [License](#license)

## Athena OSS

Athena OSS project page [https://athena-oss.github.io/]

Athena Github project [https://github.com/athena-oss/athena]

## Usage

The dbdata directory will be mounted into the docker container. To reset the data use:

```bash
athena mysql reset <dbdata directory>
```

To start the mysql server and a mysql prompt execute:
```bash
athena mysql server <dbdata directory> <port> 
```

## License
---
[[Back To Top]](#jump-to-section)

Copyright © 2016 Sascha Curth

This software is licensed under [MIT License](http://scurth.mit-license.org/). environment control
