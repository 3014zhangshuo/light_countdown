class CountdownsController < ApplicationController
  def index
  end

  def create
    @countdown = Countdown.new(countdown_params)
    @countdown.save
  end

  private

  def countdown_params
    params.require(:countdown).permit(:event, :end_at)
  end
end
