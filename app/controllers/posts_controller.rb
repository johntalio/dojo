class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
    @games = Game.all
  end

  def new
    @post = Post.new
  end

  def create
    if logged_in?
      @post = current_user.posts.new(post_params)
      if @post.save
        redirect_to @post
      else
        render 'new'
      end
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :body)
    end
end
