host="fabmedical-603183.documents.azure.com"
username="fabmedical-603183"
password="c1p4ZhPUb5ayjZ27nePor7fVQJERxBJHDpwK88PDjx7u26ZxXVwNPYdFUrI64ERKdG0KTahvBxsQwTEiToZt4g=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
