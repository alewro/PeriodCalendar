class CalendarController < ApplicationController

  def index
    start_date = params.fetch(:start_time, Date.today).to_date
  @one_days = OneDay.where(start_time: start_date.beginning_of_month..start_date.end_of_month)
  end
  
end
