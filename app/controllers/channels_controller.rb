class ChannelsController < ApplicationController
  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(params.require(:channel).permit(:name))
    @channel.save
    redirect_to root_path, notice: "#{@channel.name} Successfully Added"
  end
end
