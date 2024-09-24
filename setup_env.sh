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

# depuis le repertoire server/frontend executer les commandes suivantes:
# npm install
# npm run build => build l'app react dans le repertoir build


# Mongo DB
# Build de l'image docker pour le service d'access au donnees MongoDB.
# Doit etre fait a chaque qu'on modifie app.js dans server/database
# docker build . -t nodeapp

# Pour run l'application multi conteneur:
# docker-compose up


# Pour selection le project code engine:
# ibmcloud ce project list
# ibmcloud ce project select -n "Code Engine - sn-labs-popnpub75"

# Deployer le service d'analyse de sentiment (repertoire micro service)
# cd xrwvm-fullstack_developer_capstone/server/djangoapp/microservices
# Lancer le cli de code engine les commandes suivantes
# docker build . -t us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer
# docker push us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer
# ibmcloud ce application create --name sentianalyzer --image us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer --registry-secret icr-secret --port 5000

source ~/.bashrc