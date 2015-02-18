class User < ActiveRecord::Base
  has_many :meals
  has_many :pets

  def full_name
     "#{first_name} #{last_name}"
  end
end
