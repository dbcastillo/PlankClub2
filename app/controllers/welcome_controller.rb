class WelcomeController < ApplicationController
  def index
    @planks = Plank.all
  end
end
