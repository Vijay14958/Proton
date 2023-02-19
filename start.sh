if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vijay14958/Proton /Proton
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Proton
fi
cd /Proton
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
