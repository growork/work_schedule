class Schedule < ApplicationRecord
  before_save :set_working_days

  serialize :employees_data, Hash

  belongs_to :user

  def set_working_days
    set_base_days

  end

  def set_base_days
    employees_data.each do |section, employees|
      employees.each do |employee_id, employee|

        # Расстановка смен начинается с 3го числа.
        # 1е и 2е проставляются вручную на основании предыдущего графика.
        employee[:working_days].each do |day, type_and_hours|
          day = day.to_i

          if (employee[:working_days]["#{day}"][:hours] == "") && (day > 2)
            # Предыдущие два дня выходных или выходной и рабочий
            # вых-вых || вых-раб
            # Ставим рабочий
            # В остальных случаях оставляем пустым
            if ((employee[:working_days]["#{day - 1}"][:hours] == "") && (employee[:working_days]["#{day - 2}"][:hours] == "")) ||
                ((employee[:working_days]["#{day - 1}"][:hours] != "") && (employee[:working_days]["#{day - 2}"][:hours] == ""))
              employee[:working_days]["#{day}"][:hours] = "11"
            end
          end
        end
      end
    end
  end

  # Возвращает количество дней в месяце текущего графика
  def count_days_in_month
    Date.new(date.year, date.month, -1).day
  end
end