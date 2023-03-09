import os
import ukv.flight_client as client
serverUri = os.environ.get('SERVER_URL')
print("connecting to db at " + serverUri)
db = client.DataBase('grpc://' + serverUri)
db.main[42] = 'Hello World!'
print(db.main[42])
