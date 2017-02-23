class GameCommentsController < ApplicationController
  def new
    @game_comment = GameComment.new
  end
end
