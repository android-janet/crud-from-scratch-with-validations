class Status < ActiveRecord::Base
  has_many :likes

  validates :status, presence: true
end
