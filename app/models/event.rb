class Event < ApplicationRecord
  belongs_to :company
  belongs_to :vehicle, optional: true
  belongs_to :driver, optional: true
  belongs_to :checkout_inspection, class_name: "Inspection", optional: true
  belongs_to :checkin_inspection, class_name: "Inspection", optional: true
end
