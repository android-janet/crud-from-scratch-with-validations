class Status < ActiveRecord::Base
  has_many :likes

  validates :status, presence: true

  status = Status.new(status: "A new status")
  status.valid? # => true
  status.errors 
    # => ["Status can't be blank."]
end
