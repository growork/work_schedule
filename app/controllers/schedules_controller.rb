class SchedulesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_schedules
  before_action :set_schedule, only: [:edit, :update, :destroy]



  # GET /schedules/new
  def new
    @schedule = Schedule.new(date: Date.today.next_month)
    @schedule.employees_data = helpers.new_schedule_employees_data
    @sections = current_user.global_sections

    render 'new'
  end

  def show
    redirect_to edit_schedule_url
  end

  # GET /schedules/1/edit
  def edit
    render 'edit'
  end

  # POST /schedules
  def create
    @schedule = current_user.schedules.new(schedule_params)

    if @schedule.save
      redirect_to edit_schedule_path(@schedule)
    else
      render :new, alert: 'Что-то не так'
    end
  end

  # PATCH/PUT /schedules/1
  def update
    if @schedule.update(schedule_params)
      redirect_to @schedule, notice: 'Schedule was successfully updated.'
    else
      render partial: 'edit'
    end
  end

  # DELETE /schedules/1
  def destroy
    @schedule.destroy
    redirect_to schedules_url, notice: 'Schedule was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_schedule
    @schedule = current_user.schedules.find(params[:id])
  end

  def set_schedules
    @schedules = current_user.schedules.all
  end

  # Разрешает определённые параметры и изменяет их, разделяя тип смены и часы
  def schedule_params
    params.require(:schedule).permit(:note_time_interval, :note_left, :note_center, :note_right, :date, :user_id, employees_data: {}).tap do |schedule_params|
      schedule_params[:employees_data].each do |section, employees|
        employees.each do |employee_id, employee|
          employee[:working_days].each do |day, value|
            value[:hours] = /\d+/.match(value[:type_and_hour]).to_s
            value[:type] = /[а-яА-Я]+/.match(value[:type_and_hour]).to_s
            value.delete(:type_and_hour)
          end
        end
      end
    end
  end
end
