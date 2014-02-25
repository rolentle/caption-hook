class MessagesController < ApplicationController
  def create
    @message = Message.create(app: params[:app], user: params[:user],
                              url: params[:url], head: params[:head],
                              head_long: params[:head_long],
                              git_log: params[:git_log])

    if @message
      render json: @message, status: 201
    else
      render json: "invalid parameter", status:400
    end
  end
end
