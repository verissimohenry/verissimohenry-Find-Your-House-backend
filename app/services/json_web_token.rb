class JsonWebToken
  class << self
    SECRET_KEY = Rails.application.secrets.secret_key_base.to_s

    def encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      Jwt.encode(payload, 'normalkeystring ', 'HS256')
    end

    def decode(_token)
      decoded = Jwt.decode(payload, 'normalkeystring ', 'HS256')
      #HashWithIndifferentAccess.new(decoded)
    end
  end
end
