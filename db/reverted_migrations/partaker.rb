class Partaker < ActiveRecord::Base
  belongs_to :event
  belongs_to :participant
end
