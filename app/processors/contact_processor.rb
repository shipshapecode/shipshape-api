require 'mailgun'

class ContactProcessor < JSONAPI::Processor
  after_create_resource do
    # First, instantiate the Mailgun Client with your API key
    mg_client = Mailgun::Client.new(ENV['mg_api'])

    # Define your message parameters
    message_params = {
        from: @result.resource.email,
        to: 'ahoy@shipshape.io',
        subject: 'New Contact Request',
        text: @result.resource.description
    }

    # Send your message through the client
    mg_client.send_message('mg.shipshape.io', message_params)
  end
end