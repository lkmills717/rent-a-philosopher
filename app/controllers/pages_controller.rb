class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index 
  skip_before_action :authenticate_user!, only: :show
  
  def home
  end
end
