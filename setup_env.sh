echo "alias gf='git fetch'" >> ~/.bashrc
echo "alias gr='git rebase'" >> ~/.bashrc

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

cd server

pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

python3 -m pip install -U -r requirements.txt

# Prepare les fichier de migration a partir des fichier python model.py
# python3 manage.py makemigrations
# Applique les changements en db
# python3 manage.py migrate

# python3 manage.py createsuperuser

# python3 manage.py runserver

# depuis le repertoire front end executer les commande suivante:
# npm install
# npm run build => build l'app react dans le repertoir build

source ~/.bashrc