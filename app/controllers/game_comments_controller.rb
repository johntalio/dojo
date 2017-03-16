# class GameCommentsController < ApplicationController
#   # def new
#   #   @game_comment = GameComment.new
#   # end
#
#   def index
#     game = Game.find(params[:id])
#     @game_comments = GameComment.all.where(game_id: game)
#     # debugger
#   end
#
#   def create
#     if logged_in?
#       @game = Game.find(1)
#       @game_comment = GameComment.new(comment: game_comments_params, user_id: current_user.id, game_id: @game)
#       # debugger
#       if @game_comment.save
#         redirect_to @game
#       else
#         redirect_to @game
#       end
#     else
#       flash[:danger] = "You must be logged in to comment."
#       redirect_to root
#     end
#   end
#
#   private
#
#     def game_comments_params
#       params.require(:game_comment).permit(:comment)
#     end
# end
