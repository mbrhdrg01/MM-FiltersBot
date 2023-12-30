#Dont change anything without informing us
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mbrhdrg01/MM-FiltersBot.git /MM-FiltersBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MM-FiltersBot
fi
cd /MM-FiltersBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
