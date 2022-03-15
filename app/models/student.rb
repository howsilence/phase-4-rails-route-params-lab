class Student < ApplicationRecord
  #this uses scope, the lambda starts the code, this reads:
  #call scope, name this by_name, ->(name) look at the name attribute {where("the first_name attribute is present,  OR the last_name attribute is present", **? acts as a placeholder** then i THINK the {name}%, is saying if there is any leftovers from the name its not it )}
  scope :by_name, ->(name) { where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%") }


  def to_s
    "#{first_name} #{last_name}"
  end

end
