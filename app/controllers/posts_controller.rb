class PostsController < ApplicationController

  def index
    @posts = Post.all #すべてのレコードを@postsに代入
  end

  #  def index #indexアクションを定義した
  #    @post = Post.find(1)
  #  end

  def new
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
