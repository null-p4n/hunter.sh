#!/bin/bash

figlet HUNTER.sh
echo "Scrap the Web for data"


PS3='Select Option: '
options=("Github Check" "Amass Enumeration" "test3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Github Check")
            echo "----"
            echo "Now we check github database"
            echo "----"
            read -p "Enter your url to check : " url
echo "https://github.com/search?q=$url+password&type=code"
echo "https://github.com/search?q=$url+dockercfg&type=code"
echo "https://github.com/search?q=$url+pem_private&type=code"
echo "https://github.com/search?q=$url+id_rsa&type=code"
echo "https://github.com/search?q=$url+AWS_ACCESS_KEY_ID&type=code"
echo "https://github.com/search?q=$url+s3cfg&type=code"
echo "https://github.com/search?q=$url+htpasswd&type=code"
echo "https://github.com/search?q=$url+git-credentials&type=code"
echo "https://github.com/search?q=$url+bashrc_password&type=code"
echo "https://github.com/search?q=$url+sshd_config&type=code"
echo "https://github.com/search?q=$url+xoxp_OR_xoxb_OR_xoxa&type=code"
echo "https://github.com/search?q=$url+SECRET_KEY&type=code"
echo "https://github.com/search?q=$url+client_secret&type=code"
echo "https://github.com/search?q=$url+sshd_config&type=code"
echo "https://github.com/search?q=$url+github_token&type=code"
echo "https://github.com/search?q=$url+api_key&type=code"
echo "https://github.com/search?q=$url+deploy.rake&type=code"
echo "https://github.com/search?q=$url+mysql&type=code"
echo "https://github.com/search?q=$url+credentials&type=code"
echo "https://github.com/search?q=$url+PWD&type=code"
echo "https://github.com/search?q=$url+.bash_history&type=code"
echo "https://github.com/search?q=$url+.sls&type=code"
echo "https://github.com/search?q=$url+secrets&type=code"
echo "https://github.com/search?q=$url+composer.json&type=code"
echo "https://github.com/search?q=$url+ftp.json&type=code"
            ;;
        "Amass Enumeration")
              echo "Now we check multiple DB with Amass"
             read -p "Enter your url to check : " url
            sudo amass enum -brute -d $url -src
            ;;
        "test3")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
