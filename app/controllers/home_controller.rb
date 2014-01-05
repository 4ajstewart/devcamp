class HomeController < ApplicationController
  def index
    @talks = Talk.all
  end
end
