# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account SID and Auth Token from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# Initialize Twilio Client
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Get the accounts with the given sid
@accounts = @client.api.v2010.accounts(account_sid)

# Create a call sip w/ authentication
@call = @client.account.calls.create(
  url: 'http://www.example.com/sipdial.xml',
  to: 'sip:kate@example.com',
  from: 'Jack',
  sip_auth_password: 'secret',
  sip_auth_username: 'jack'
)

# Print call recipient
puts @call.to
