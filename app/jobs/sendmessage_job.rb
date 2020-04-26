# require 'twilio-ruby'
# class SendmessageJob < ApplicationJob
#   queue_as :default

#   def perform()
#     account_sid = 'AC933b0a4024b523adcba2457b758dbdc4'
#       auth_token = 'd34fdbfe23f1855e76ca994fdb1b113c'
#       client = Twilio::REST::Client.new(account_sid, auth_token)

#       from = '+16623378759'
#       to = '+6282127015766'

#       client.messages.create(
#       from: from,
#       to: to,
#       body: "Assalamualaikum..... hai!"
#       )
#   end
# end
