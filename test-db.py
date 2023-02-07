import ukv.flight_client as client
db = client.DataBase('grpc://ukv.ukv-test.svc.cluster.local:38709')
db.main[42] = 'Hello World!'
