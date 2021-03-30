module SchedulesHelper
  # Возвращает количество дней в месяце
  def count_days_in_month
    Date.new(@schedule.date.year, @schedule.date.month, -1).day
  end

  # Устанавливается основная структура хэша
  def new_schedule_employees_data
    employees_data = {}
    current_user.global_sections.each do |section|
      employees_data["#{section.title}"] = {}

      section.employees.each do |employee|
        employees_data["#{section.title}"]["#{employee.id}"] = {
            service_number: employee.service_number,
            name: "#{employee.name}",
            subsection: "",
            working_days: {}
        }

        count_days_in_month.times do |day|
          employees_data["#{section.title}"]["#{employee.id}"][:working_days]["#{day+1}"] = {
              hours: "11",
              type: "у"
          }
        end
      end
    end

    employees_data
  end

  # Добавляет пустую строку в начало выпадающего списка с подсекциями
  # Метод map возвращает массив с подсекциями и метод unshift добавляет в его
  # начало пустую строку
  def subsections_for_employee(employee_id)
    Employee.get_employee(employee_id).global_section.subsections.map {|subsection| subsection.title}.unshift('')
  end
end
