/bin/systemctl daemon-reload
/bin/systemctl enable httpd

/usr/sbin/httpd -D FOREGROUND
