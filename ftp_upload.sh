ftp_host="clawback.microsolved.com"
user="ftpupload"
pass="$ecr3tp4ssw0rd"
path="/"

do
ftp -in <<EOF
open $ftp_host
user $user$pass
cd $path
put $1
close 
bye
EOF
echo$1 uploaded to $path 

# Break, otherwise endless loop
break
done
