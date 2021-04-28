#!/bin/bash


DATE=$(date +%H-%M-%S)

BACKUP=db-$DATE.sql

DB_PASSWORD=$1
DB_HOST=$2
DB_NAME=$3
AWS_ACCESS=$4
AWS_SECRET=$5
BUCKET_NAME=$6


mysqldump --column-statistics=0 -u root $DB_PASSWORD -h $DB_HOST $DB_NAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=&AWS_ACCESS && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
echo "Uploading your $BACKUP backup" && \
aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME/$BACKUP