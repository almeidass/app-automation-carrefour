# !/bin/bash

[ "$1" == "rm" ] || [ "$2" == "rm" ] && echo "Removing VENV" && rm -Rf .venv

echo "Creating VENV"
python -m venv .venv
echo "Activating VENV"
. .venv/bin/activate
echo "Updating pip"
[ "$1" == "log" ] || [ "$2" == "log" ] && pip install --upgrade pip || pip install --upgrade pip &> /dev/null
echo "Installing dependencies"
[ "$1" == "log" ] || [ "$2" == "log" ] && pip install -r requirements.txt && rfbrowser init || pip install -r requirements.txt && rfbrowser init &> /dev/null