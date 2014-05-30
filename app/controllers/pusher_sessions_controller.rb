require 'openssl'

class PusherSessionsController < ApplicationController

  def create
    # 1. TODO: Check that the current user of the application has permission to
    #    access the channel to which they are trying to subscribe

    # 2. Generate and send the authentication response
    render json: auth_response(
      ENV['PUSHER_KEY'],
      ENV['PUSHER_SECRET'],
      params.slice(:socket_id, :channel_name))
  end

  private

    def auth_response(key, secret, options)
      {
        auth: "#{key}:#{auth_signature(secret, options)}"
      }
    end

    def auth_signature(secret, options)
      digest = OpenSSL::Digest::SHA256.new
      string_to_sign = "#{options[:socket_id]}:#{options[:channel_name]}"

      OpenSSL::HMAC.hexdigest(digest, secret, string_to_sign)
    end
end
