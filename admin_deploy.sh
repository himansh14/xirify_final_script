#!/bin/bash 

mkdir /opt/deploy/
cd /opt/deploy/
mkdir admin 

# Creating the upload directory structure for ADMIN
cd /mnt
mkdir admin project
cd admin
mkdir admin_uploads
cd admin_uploads
mkdir contractorfirm inductiontraining toolboxtraining users workpermit
cd contractorfirm
mkdir images workorderphotos
cd ../inductiontraining
mkdir idproofphotos inductioncategorydocs photos
cd ../toolboxtraining
mkdir documents
cd ../users
mkdir profile
cd ../workpermit
mkdir documents
sleep 3

# ADMIN DETAILS
# Username without any space
Username="Anp"
# USERNAME with Capital Letters same as Username:
USERNAME="ANP"
# Username_password without any space
Username_password="Anp123"
# Database_name with db
Database_name="Anpdb"

###################< Creating the ADMIN ENV_VAR file >###################

# Considering the variables
ABC=$(cat <<EOF
{"client_id": "102733267098750829446","auth_uri": "https://accounts.google.com/o/oauth2/auth","token_uri": "https://oauth2.googleapis.com/token","auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs","client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-qlncl%40vastsafety-600d2.iam.gserviceaccount.com"}
EOF
)

PQR=$(cat <<EOF
{"type": "service_account","project_id": "vastsafety-600d2","private_key_id": "c98c5f58998dfd8513932d578f29c97161597f13","private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC+3hJm81f0QHje\n+neRfSZAOq/CTI5mGUpN6YS1Nx/3Xgd2zUTykGwAf8nJGWomu/LbLCjZlncwKHJB\nEfR5oWoez50d7nnzZGjLu+tbEgr5yPFgQJchZMQBJ2pmGObiCGmus/bfTMcoEHzK\nPUXAj/0NuQKsh+yiA1pp9sEZj9jiqG9f8sYKBfPA/r3rdyH04Yj0459VBuKnN85p\nj3096fECPnbsjIWEoi4CiqjZG9FCk7Sc1UgN0lNxcGf/tjS22J0YRlZJpKhmxUfz\n7AgVK36Zqv5tRlJZnFnW6X2tvsnpty3iHgm+scYjJQn48DwoMeVO0+Kn2YtjhKaV\nnREZ8kgZAgMBAAECggEABZTf6+PM3CcwgbDIY1hKEJHGxwNPHLw7mIiuKVB53lWB\nGV/KVt+TUPZrs7ZLDOPtJ6ykayyDwsREBxQb1py6SjlfCluJdG0oxWBy8wBVktVl\n/Z8V7FOSicgZy++JfO2rDYFUxFXt8wV8aLue+REc4NRauCnnaRt4/uVI41L6EDK4\n1WCpTwlyOZDqEX6ZQ7fUx0zdGdGv4HpIRbEKWLpzrBxnXHhP+/9Q0bXr/U8GZb5m\n/PvNFGyJ1gG6w1dC9+MrGEM3VXlDn3rYWF4G7Ll+0eyDmkWlDqZLqlZoQjv4tECE\nAx4JdWhSufKxuIUWQHLNGV0a8uEPE67wuHLB9s01SQKBgQDdxs2xTD485DnSZAyh\naKeSZFM5P/kXVkFjm5X2tEpBXnofIiRnRQjHhsywot0mjyKXa43FrWgocKjoxoqL\nnE/XGqvY8IG0tv8PwniAJIbiCa+y8ZTOUJqiS2q6AVhzTcdNdN3P60ZdOX0YTUpk\nGXgMIRpLPRkDXrTdD4laRhq6lQKBgQDcUjdbLTdIZIgOzjB+xNmnmm4EFEffu0S6\nBOZaJ3jC//3Z+meF7fGV5k3fM8WNRzRfVAmWhEOpwuypfbEyM0tlsOOLFMyDyI6b\nrfZDg9r4rKfweqiWw27Oostssi36JOQFE2n1YAnQZgbT68pXSORArbsnFLpCU3xy\ntrOvI5B6dQKBgQDMNBmBfupvttVm26illm91Y9sdg8IfstRSmxfiKO+WcR+ROya5\nz97dmUkv+0YWEwWO1wGbWqflVJayft1i33LEZVKGVi2X8Ee6gx3hH8DysGiPI9IY\nhi9b8IU877A5uwwgTdNPdxs7C4wbrE8rDCh1QqWrUX6Ok82FHqEh9hr2YQKBgQCU\nIjNV+nDRG8bfLYMtuO0e45ZU583rf94VtHWs6B0p/zSO+u3f/rwQLWjuScDp3JY6\nAibwLL3Rxl2ZGAmr1xE6rlRPjwxzDsXTpoONoXn4+R1xcwcnVv+Jr6tWyfZf2a32\nO7diY9A1bmPo2QCS70+IrUbIYAdb0QY7mtv1RdQ+gQKBgQDb7wCBkMMXhXlKqhLj\nUY44+a36vEElZMlw/RjukTxek355sqtrN0lrRh+EjlPcfLFmXhE4fI4EIr+dBJLK\nDFISzSfVM/6JZ9Fr3Xodwe1duK0IkJxvoufjtgoVWDQC8f0GBFj/oVIwir5o2PWQ\nAn3A5goj6RXr1zzzrvMlvoaE9Q==\n-----END PRIVATE KEY-----\n","client_email": "firebase-adminsdk-qlncl@vastsafety-600d2.iam.gserviceaccount.com"}
EOF
)

# For taking ABC and PQR as variable again
IJK=("\`cat <<EOF
$ABC
EOF
\`")

XYZ=("\`cat <<EOF
$PQR
EOF
\`")

# Setting the server Ip
SERVER_IP=$(hostname -I | awk '{print $1}')

export ADMIN_IMAGE_NAME="admin_backend_image"
export VS_ADMIN_DB_URL="mongodb://$Username:$Username_password@$SERVER_IP:27017/$Database_name"
export VS_ADMIN_PORT="3030"
export VS_AUTH_SECRET="a1bPsXs3d/kEBXe9R6GQ8S/ZlbQ="
export VS_CLIENT_EMAIL_ACC="false"
export VS_EMAIL_ID="vastsafetydev@gmail.com"
export VS_EMAIL_SERVICE_HOST="smtp.rediffmailpro.com"
export VS_EMAIL_SERVICE_PORT="587"
export VS_SECURE_CONNECTION="false"
export VS_SENDGRID_API_KEY="apikey"
export VS_EMAILPASSWORD="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"
export VS_CLIENT_URL="http://$SERVER_IP:3000"
export VS_CLIENT="VAST"
export VS_CLIENT_HOST="http://$SERVER_IP"
export VS_CLIENT_PORT="3000"
export VS_APP_NAME="VSA Revamp App"
export VS_IOS_LINK="coming soon"
export VS_ANDROID_LINK="coming soon"
export VS_LOG_LEVEL="info"
export VS_PROXY_URL="http://$SERVER_IP:4050"
export VS_FIREBASE_DB_URL="https://vastsafety-600d2.firebaseio.com"
export VS_REFRESH_AUTH_SECRET="b713e16b5f9df87294f43baeba0e559905db8621f3116fb51b58b43cfea5"
export VS_REFRESH_TOKEN_EXPIRES_IN="180d"
export VS_REFRESH_TOKEN_TTL="15552000"
export VS_ACCESS_TOKEN_EXPIRES_IN="15m"
export VS_FCM2=$ABC
export VS_FCM1=$PQR

cat <<EOF > "/opt/deploy/admin/admin.sh"
#!/bin/bash

export ADMIN_IMAGE_NAME="admin_backend_image"
export VS_ADMIN_DB_URL="mongodb://$Username:$Username_password@$SERVER_IP:27017/$Database_name"
export VS_ADMIN_PORT="3030"
export VS_AUTH_SECRET="a1bPsXs3d/kEBXe9R6GQ8S/ZlbQ="
export VS_CLIENT_EMAIL_ACC="false"
export VS_EMAIL_ID="vastsafetydev@gmail.com"
export VS_EMAIL_SERVICE_HOST="smtp.rediffmailpro.com"
export VS_EMAIL_SERVICE_PORT="587"
export VS_SECURE_CONNECTION="false"
export VS_SENDGRID_API_KEY="apikey"
export VS_EMAILPASSWORD="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"
export VS_CLIENT_URL="http://$SERVER_IP:3000"
export VS_CLIENT="VAST"
export VS_CLIENT_HOST="http://$SERVER_IP"
export VS_CLIENT_PORT="3000"
export VS_APP_NAME="VSA Revamp App"
export VS_IOS_LINK="coming soon"
export VS_ANDROID_LINK="coming soon"
export VS_LOG_LEVEL="info"
export VS_PROXY_URL="http://$SERVER_IP:4050"
export VS_FIREBASE_DB_URL="https://vastsafety-600d2.firebaseio.com"
export VS_REFRESH_AUTH_SECRET="b713e16b5f9df87294f43baeba0e559905db8621f3116fb51b58b43cfea5"
export VS_REFRESH_TOKEN_EXPIRES_IN="180d"
export VS_REFRESH_TOKEN_TTL="15552000"
export VS_ACCESS_TOKEN_EXPIRES_IN="15m"
export VS_FCM2=$IJK
export VS_FCM1=$XYZ
EOF
chmod +x /opt/deploy/admin/admin.sh

echo "Created the admin.sh in /opt/deploy/admin/admin.sh"
sleep 3

###################< Setting up admin.yml docker-compose file >###################

cat <<EOF > "/opt/deploy/admin/admin.yml"
version: '3'
services:
  service:
    image: admin_backend_image
    environment:
      - ADMIN_IMAGE_NAME=\${ADMIN_IMAGE_NAME}
      - VS_ADMIN_DB_URL=\${VS_ADMIN_DB_URL}
      - VS_ADMIN_PORT=\${VS_ADMIN_PORT}
      - VS_AUTH_SECRET=\${VS_AUTH_SECRET}
      - VS_CLIENT_EMAIL_ACC=\${VS_CLIENT_EMAIL_ACC}
      - VS_EMAIL_ID=\${VS_EMAIL_ID}
      - VS_EMAIL_SERVICE_HOST=\${VS_EMAIL_SERVICE_HOST}
      - VS_EMAIL_SERVICE_PORT=\${VS_EMAIL_SERVICE_PORT}
      - VS_SECURE_CONNECTION=\${VS_SECURE_CONNECTION}
      - VS_SENDGRID_API_KEY=\${VS_SENDGRID_API_KEY}
      - VS_EMAILPASSWORD=\${VS_EMAILPASSWORD}
      - VS_CLIENT_URL=\${VS_CLIENT_URL}
      - VS_CLIENT=\${VS_CLIENT}
      - VS_CLIENT_HOST=\${VS_CLIENT_HOST}
      - VS_CLIENT_PORT=\${VS_CLIENT_PORT}
      - VS_APP_NAME=\${VS_APP_NAME}
      - VS_IOS_LINK=\${VS_IOS_LINK}
      - VS_ANDROID_LINK=\${VS_ANDROID_LINK}
      - VS_LOG_LEVEL=\${VS_LOG_LEVEL}
      - VS_PROXY_URL=\${VS_PROXY_URL}
      - VS_FIREBASE_DB_URL=\${VS_FIREBASE_DB_URL}
      - VS_REFRESH_AUTH_SECRET=\${VS_REFRESH_AUTH_SECRET}
      - VS_REFRESH_TOKEN_EXPIRES_IN=\${VS_REFRESH_TOKEN_EXPIRES_IN}
      - VS_REFRESH_TOKEN_TTL=\${VS_REFRESH_TOKEN_TTL}
      - VS_ACCESS_TOKEN_EXPIRES_IN=\${VS_ACCESS_TOKEN_EXPIRES_IN}
      - VS_FCM2=\${VS_FCM2}
      - VS_FCM1=\${VS_FCM1}
    ports:
      - \${VS_CLIENT_PORT}:3000
      - \${VS_ADMIN_PORT}:3030
    volumes:
      - /mnt/admin/admin_uploads:/opt/admin_uploads/
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    deploy:
      replicas: 1
EOF
chmod +x /opt/deploy/admin/admin.yml

echo "Created the admin.yml file in /opt/deploy/admin/admin.yml"
sleep 3

###################< Setting docker stack for admin >###################

cat <<EOF > "/opt/deploy/admin/dockerstack_admin.sh"
#!/bin/bash

# Removing the previous stack
docker stack rm admin_stack

sleep 10

# Sourcing the environment files
source /opt/deploy/admin/admin.sh

# Deploying the stack application
docker stack deploy -c admin.yml admin_stack
EOF
chmod +x /opt/deploy/admin/dockerstack_admin.sh

echo "Created the dockerstack file for admin in /opt/deploy/admin/dockerstack_admin.sh"
sleep 3

###################< Mongodb database for admin >###################

mongosh << EOF
// Create DB
use $Database_name

// Create User
db.createUser({
   user: "$Username",
   pwd: '$Username_password',
   roles: [
      { role: "dbOwner", db: "$Database_name" }
   ]
});

// Create Insert statement
db.users.insertOne({
   "firstName":"Admin",
   "lastName":"User",
   "username":"admin",
   "email":"admin@valueaddsofttech.com",
   "phoneNumber":"9988776655",
   "isAdmin":true,
   "isActive":true,
   "password":"\$2b\$10\$N/WLUzfhQbVe11hoU/4mNO1YyqSXXnKUEGRDAHiNVGQll1VS5JXXC",
   "idProofType":"Pan Card",
   "idProofNumber":"FS23BD75676",
   "type":"Internal"
});

// Temp script in admin DB
db.projects.insertOne({"projectCode": "${USERNAME}1",projectName:"${Username}1"});
db.projects.insertOne({"projectCode": "${USERNAME}2",projectName:"${Username}2"});
db.projects.insertOne({"projectCode": "${USERNAME}3",projectName:"${Username}3"});
EOF

# Import Data collections
cd "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection idprooftypes --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/idprooftypes.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection entitlements --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/entitlements.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection roles --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/roles.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection categories --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/categories.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection statuses --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/statuses.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection rootcauses --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/rootcauses.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection emailconfigurations --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/emailconfigurations.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection relationships --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/relationships.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection notifications --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/notifications.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection serviceareas --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/serviceareas.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection labourformfields --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/labourformfields.json"

mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection safetyactionabletypes --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/safetyactionabletypes.json"

#mongoimport --db $Database_name --host localhost --port 27017 --username $Username --password $Username_password --collection safetyactionablecategories --type json --file "/opt/build/admin/vsa-revamp-admin/src/scripts/day0/safetyactionablecategories.json"
