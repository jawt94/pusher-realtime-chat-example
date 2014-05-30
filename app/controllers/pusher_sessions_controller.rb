class PusherSessionsController < ApplicationController

  def create
    if current_user_has_permission?
      user_id = Random.rand(1..100)
      user_name = "guest_#{user_id}"
      user_email = "#{user_name}@example.com"

      render json: Pusher.channel(params[:channel_name]).authenticate(params[:socket_id], {
        user_id: user_id,
        user_info: {
          name: user_name,
          email: user_email
        }
      })
    else
      render text: 'Forbidden', status: :forbidden
    end
  end

  private

    def current_user_has_permission?
      # For illustrative purposes only
      true
    end
end
