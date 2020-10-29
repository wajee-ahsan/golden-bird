class Notification
  def initialize
    # @client = Twilio::REST::Client.new Figaro.env.twilio_account_sid, Figaro.env.twilio_auth_token
    @client = Twilio::REST::Client.new twilio_account_sid, twilio_auth_token
  end

  def send_message
    begin
      message = @client.api.account.messages.create(
        from: '+19062844910',
        to: '+923006584500',
        body: "Goldenbird: Message service testing.")
    rescue Twilio::REST::TwilioError => e
      puts e.message
    end
  end

  private
    def twilio_account_sid
      'AC1289dc2a8e82ec82f36558776f2c1d33'
    end

    def twilio_auth_token
      '9a34ea1daaf0213cb75bd4865c958b9c'
    end
end