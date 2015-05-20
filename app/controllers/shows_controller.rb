class ShowsController < ApplicationController
  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    @show.save
    redirect_to show_path(@show), notice: "#{@show.name} Successfully Added"
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
    redirect_to show_path(@show), notice: "#{@show.name} Successfully Updated"
  end

  private
  def show_params
    params.require(:show).permit(:name)
  end
end
