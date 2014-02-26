class HooksController < ApplicationController
  def index
    @hooks = Hook.all
  end

  def new
    @hook = Hook.new
  end

  def create
    Hook.create(hooks_params)
    redirect_to hooks_path
  end

  def hooks_params
    params.require(:hook).permit(:url, :app, :user, :post_url, :head,
                                :head_long, :git_log)
  end
end
