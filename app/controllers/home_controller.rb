class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:about]
  def index
  end

  def about
  end

end
