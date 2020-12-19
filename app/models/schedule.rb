class Schedule < ApplicationRecord
  serialize :employees_data, Hash

  {"ЛКМ": {1 => {"service_number": 123, "name": "Иванов", "mini_section": "сыпак", "working_days":{1 => {"hours": 11, "type": "у"}, 2 => {"hours": 11, "type": "у"}, 3 => {"hours": 11, "type": "у"}, 4 => {"hours": 11, "type": "у"}, 5 => {"hours": 11, "type": "у"}, 6 => {"hours": 11, "type": "у"}, 7 => {"hours": 11, "type": "у"}, 8 => {"hours": 11, "type": "у"}, 9 => {"hours": 11, "type": "у"}, 10 => {"hours": 11, "type": "у"}, 11 => {"hours": 11, "type": "у"}, 12 => {"hours": 11, "type": "у"}, 13 => {"hours": 11, "type": "у"}, 14 => {"hours": 11, "type": "у"}, 15 => {"hours": 11, "type": "у"}, 16 => {"hours": 11, "type": "у"}, 17 => {"hours": 11, "type": "у"}, 18 => {"hours": 11, "type": "у"}, 19 => {"hours": 11, "type": "у"}, 20 => {"hours": 11, "type": "у"}, 21 => {"hours": 11, "type": "у"}, 22 => {"hours": 11, "type": "у"}, 23 => {"hours": 11, "type": "у"}, 24 => {"hours": 11, "type": "у"}, 25 => {"hours": 11, "type": "у"}, 26 => {"hours": 11, "type": "у"}, 27 => {"hours": 11, "type": "у"}, 28 => {"hours": 11, "type": "у"}, 29 => {"hours": 11, "type": "у"}, 30 => {"hours": 11, "type": "у"}, 31 => {"hours": 11, "type": "у"}}}}}


  belongs_to :user
end
