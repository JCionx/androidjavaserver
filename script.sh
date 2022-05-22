cd ~

read -p "Do you agree with the Minecraft EULA? (https://account.mojang.com/documents/minecraft_eula) [Y/n] " response

case $response in [yY][eE][sS]|[yY]|[jJ]|'') 
    pkg install openjdk-17 -y
    mkdir Server
    cd Server
    pkg install wget -y
    wget https://papermc.io/api/v2/projects/paper/versions/1.18.2/builds/317/downloads/paper-1.18.2-317.jar
    java -Xms1024M -Xmx1024M -jar paper-1.18.2-317.jar --nogui
    rm eula.txt
    wget https://raw.githubusercontent.com/JCionx/androidjavaserver/master/eula.txt
    java -Xms1024M -Xmx1024M -jar paper-1.18.2-317.jar --nogui
    stop
    echo Installation complete!
    cd ~
    rm install.sh
    ;;
    *)
    cd ~
    rm install.sh
    echo Installation cancelled.
    ;;
esac
