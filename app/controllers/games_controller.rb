class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
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

  private

    def game_params
      params.require(:game).permit(:name, :platform, :esrb_rating, :genre, :score)
    end
end
