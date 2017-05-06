require 'mailgun'

class ContactProcessor < JSONAPI::Processor
  after_create_resource do
    # First, instantiate the Mailgun Client with your API key
    mg_client = Mailgun::Client.new(ENV['mg_api'])

    body_text = ''
    body_text << 'Name: ' + @result.resource.name + '<br>'
    body_text << 'Company: ' + @result.resource.company + '<br><br>'
    body_text << @result.resource.description + '<br>'


    # Define your message parameters
    message_params = {
        from: @result.resource.email,
        to: 'ahoy@shipshape.io',
        subject: 'Contact - ' + @result.resource.project_type,
        text: body_text
    }

    # Send your message through the client
    mg_client.send_message('mg.shipshape.io', message_params)
  end
end