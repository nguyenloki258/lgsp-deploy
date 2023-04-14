#!/bin/bash
(crontab -l ; echo "0 0 * * * /srv/backup.sh")| crontab -

