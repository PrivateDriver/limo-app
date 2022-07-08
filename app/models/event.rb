class Event < ApplicationRecord
   belongs_to :drive, optional: true
end
