class CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  # before_action :set_activity

  def new
    @comment = Comment.new
  end #new

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end #if
    end #respond do
  end #create


  def edit
     
  end #edit
    




  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_activity
       @activity = Activity.find(params[:activity_id])
    end #set_activity

    def set_event
       @event = Event.find(params[:event_id])
    end #set_event

    def comment_params
      params.require(:comment).permit(:name, :comment)
    end
end #CommentsController
