class CalendarController < ApplicationController

  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @one_days = OneDay.where(start_time: start_date.beginning_of_month..start_date.end_of_month)
    @more_days = MoreDay.where(start_time: start_date.beginning_of_month..start_date.end_of_month)
  end

  def show
    @more_days = MoreDay.all
    @one_days = OneDay.all
  end
  
end
