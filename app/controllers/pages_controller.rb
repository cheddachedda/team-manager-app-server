class PagesController < ApplicationController
  skip_before_action :is_authorized
  
  def home
  end
end
