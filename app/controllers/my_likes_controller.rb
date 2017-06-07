class MyLikesController < ApplicationController

  def index
    @my_likes = current_user.likes


    render("my_likes/index.html.erb")
  end


end
