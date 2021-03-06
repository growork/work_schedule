class SchedulesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  def index
    @schedules = current_user.schedules.all
  end

  # GET /schedules/1
  def show
    respond_to do |format|
      format.html { render partial: 'show'}
    end
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new(date: Date.today.next_month)
    @schedule.employees_data = helpers.new_schedule_employees_data

    @sections = current_user.global_sections

    respond_to do |format|
      format.html { render partial: 'new'}
    end
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  def create
    @schedule = current_user.schedules.new(schedule_params)

    if @schedule.save
      redirect_to @schedule, notice: 'Schedule was successfully created.'
    else
      redirect_to root_path
    end
  end

  # PATCH/PUT /schedules/1
  def update
    if @schedule.update(schedule_params)
      redirect_to @schedule, notice: 'Schedule was successfully updated.'
    else
      render :edit
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

    # Only allow a trusted parameter "white list" through.
    def schedule_params
      params.require(:schedule).permit(:note_time_interval, :note_left, :note_center, :note_right, :date, :user_id, employees_data: {})
    end
end
