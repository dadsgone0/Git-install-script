while true; do
    read -p "First we have to install Homebrew, is that okay? Y or N? If you choose N this script will exit." yn
    case $yn in
        [Yy]* ) /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Alright, homebrew is installed! ready to install git? Y or N? If you choose N, this script will exit." yn
    case $yn in
        [Yy]* ) brew install git; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo All done!
exit