echo "alias gf='git fetch'" >> ~/.bashrc
echo "alias gr='git rebase'" >> ~/.bashrc

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

cd server

pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

python3 -m pip install -U -r requirements.txt

# python3 manage.py makemigrations
# python3 manage.py migrate

# python3 manage.py runserver

source ~/.bashrc