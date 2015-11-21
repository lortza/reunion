class RsvpsController < ApplicationController
  before_action :set_rsvp, only: [:show, :edit, :update, :destroy]
  before_action :load_rsvpable

  def index
    @rsvps = @rsvpable.rsvps
  end

  def new
    @rsvp = @rsvpable.rsvps.new
  end

  def create
    @rsvp = @rsvpable.rsvps.new(params[:rsvp])
    if @rsvp.save
      redirect_to @rsvpable, notice: "RSVP created."
    else
      render :new
    end
  end

  def destroy
    @rsvp = @rsvpable.rsvps.find(params[:id])
    @rsvp.destroy
    redirect_to @rsvpable, notice: "RSVP deleted."
  end

private

  def rsvp_params
    params.require(:rsvp).permit(:name, :rsvp)
  end

  def set_rsvp
    @rsvp = Rsvp.find(params[:id])
  end

  def load_rsvpable
    resource, id = request.path.split('/')[1, 2]
    @rsvpable = resource.singularize.classify.constantize.find(id)
  end
end #RsvpsController
