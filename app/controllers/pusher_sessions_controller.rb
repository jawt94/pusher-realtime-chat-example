class PusherSessionsController < ApplicationController

  def create
    if current_user_has_permission?
      render json: Pusher.channel(params[:channel_name]).authenticate(params[:socket_id])
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
