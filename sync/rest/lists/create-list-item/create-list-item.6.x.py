# Download the Python helper library from twilio.com/docs/python/install
from twilio.rest import Client
import json

# Your Account Sid and Auth Token from twilio.com/user/account
account_sid = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
auth_token = "your_auth_token"
client = Client(account_sid, auth_token)

data = json.dumps({
    'number': "001",
    'name': "Bulbasaur",
    'attack': 49
})

list_item = client.preview \
                  .sync \
                  .services("ISXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX") \
                  .sync_lists("MyCollection") \
                  .sync_list_items \
                  .create(data=data)

print(list_item.data)
