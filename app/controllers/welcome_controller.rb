class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Welcome Rrails101"
  end
end
