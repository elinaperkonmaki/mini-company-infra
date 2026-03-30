#!/bin/bash
dnf install -y httpd awscli
systemctl enable httpd
systemctl start httpd

cat <<EOF > /var/www/html/index.html
<h1>Elina's Mini Company Infrastructure Works</h1>
<p>Web server deployed with Terraform</p>
EOF