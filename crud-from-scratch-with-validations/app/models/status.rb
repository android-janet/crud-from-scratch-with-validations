class Status < ActiveRecord::Base
  has_many :likes

  validates :status, presence: true

  status = Status.new(status: "A new status")
  status.errors.messages # => {}
  status.valid? # => false
  status.errors.messages # => {status:["can't be blank."]}
  
end
