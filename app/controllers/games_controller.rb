class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    @game_comments = GameComment.where(game_id: @game).all
  end

  def new
    @game = Game.new
  end

  def create
    if logged_in?
      @game = current_user.games.new(game_params)
      if @game.save
        redirect_to @game
      else
        render 'new'
      end
    end
  end

  def comment
    if logged_in?
      @game = Game.find(1)
      @game_comment = GameComment.new(comment: game_comments_params, user_id: current_user.id, game_id: @game)
      if @game_comment.save
        flash.now[:notice] = "Post successful!"
        redirect_to @game
      else
        flash[:danger] = "Your comment was not posted."
      end
    else
      flash.now[:notice] = "You must be logged in to post a comment."
      redirect_to root_path
    end
  end

  private

    def game_params
      params.require(:game).permit(:name, :platform, :esrb_rating, :genre, :score)
    end

    def game_comments_params
      params.require(:game_comment).permit(:comment)
    end
end
