class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]


	def index

	end

	def create
      @comment = current_user.comment.new(classified_ad_params)
    end
    respond_to do |format|
      if @comment.save
        format.json { render json: @comment, status: :created, location: @classified_ad }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :classified_ad_id)
    end

end
