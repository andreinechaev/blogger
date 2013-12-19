class StartPagesController < ApplicationController
  def index
  	@posts = Post.all 
  end
end
