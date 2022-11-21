class Event < ApplicationRecord
   belongs_to :driver, optional: true
end
