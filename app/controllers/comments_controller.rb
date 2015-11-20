class CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :load_commentable 

  def index
    @comments = @commentable.comments 
  end #index

  def new
    @comment = @commentable.comments.new
  end #new

  def create
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      redirect_to @commentable, notice: "Comment created."
    else
      render :new
    end #if
  end #create

  def destroy
     @comment = @commentable.comments.find(params[:id])
     @comment.destroy
     redirect_to @commentable, notice: "#{@comment.name}'s comment has been deleted."
  end #destroy
    

  private

    def load_commentable
      resource, id = request.path.split('/')[1, 2]
      @commentable = resource.singularize.classify.constantize.find(id)

    # alternative option:
    # def load_commentable
    #   klass = [Activity, Event].detect { |c| params["#{c.name.underscore}_id"] }
    #   @commentable = klass.find(params["#{klass.name.underscore}_id"])
    # end
    end #load_commentable
      
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:name, :comment)
    end
end #CommentsController
