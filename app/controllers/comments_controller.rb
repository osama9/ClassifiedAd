class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]


	def index
    @comments = Comment.where(:classified_ad_id => params[:classified_ad_id])

    render json: @comments, status: 200
	end

	def create
    puts comment_params
      @comment = current_user.comments.new(comment_params)
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
