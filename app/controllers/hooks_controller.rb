class HooksController < ApplicationController
  def index
    @hooks = Hook.all
  end

  def new
    @hook = Hook.new
  end
end
