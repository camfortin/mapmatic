class PagesController < ApplicationController
  def home
    @title = "mapmatic"
  end

  def about
    @title = "about mapmatic"  
  end
  
  def sandbox
    @title = "sandbox"  
  end

end