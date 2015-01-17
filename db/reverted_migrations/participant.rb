class Participant < ActiveRecord::Base
  has_many :partakers
  has_many :events, :through => :partakers
end
