class EmployeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee, only: [:edit, :update, :destroy]

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
    respond_to do |format|
      format.html { render partial: 'edit'}
    end
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to :settings, notice: 'Сотрудник успешно добавлен!'
    else
      redirect_to :settings, alert: 'Ошибка'
    end
  end

  # PATCH/PUT /employees/1
  def update
    if @employee.update(employee_params)
      redirect_to :settings, notice: 'Информация обновлена!'
    else
      redirect_to :settings, alert: 'Что-то пошло не так!'
    end
  end

  # DELETE /employees/1
  def destroy
    @employee.destroy
    redirect_to :settings, alert: 'Сотрудник удалён!'
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  def set_employee
    @employee = Employee.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def employee_params
    params.require(:employee).permit(:name, :service_number, :global_section_id, :id, :morning, :evening, :duty, :work_overtime, :independence)

  end
end
