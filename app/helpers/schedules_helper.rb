module SchedulesHelper
  def count_days_in_month
    Date.new(@schedule.date.year, @schedule.date.month, -1).day
  end
end
