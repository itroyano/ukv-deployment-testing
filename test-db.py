import ukv.flight_client as client
print("connecting to db at ukv.ukv-test.svc.cluster.local:38709")
db = client.DataBase('grpc://ukv.ukv-test.svc.cluster.local:38709')
db.main[42] = 'Hello World!'
print(db.main[42])
