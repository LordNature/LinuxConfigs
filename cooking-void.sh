#############################
## NATURES BOOTSTRAP FILE  ##
######### VOID ONLY #########
#############################

#!/bin/sh

cd $HOME
uid = $(id -u)
if [[ uid == 0 ]]; then
	echo "Woah! You forgot you were root!"
	exit 1
fi

printf "Time to cook!\n"
printf "This won't install graphics btw.\n"
for i in {10..0}; do
	sleep 1
	prinf "We are cooking in $sec seconds..."
done
printf "\n"

printf "All your passwords belong to us.\n"
sudo printf "You fool! Ha! I've got your password now.\n"

printf "Preperation: Let's fetch those updates!"
sudo xbps-install -Syu

printf "Ingredients: Time to add the applications..."
sudo xbps-install -y i3-gaps

printf "Decorations: Getting your favorite eye candy ready..."

printf "Wrap it all together..."

printf "Ding ding! It's complete!"
