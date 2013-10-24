require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
  validates :email, :format => { :with => /\w+@\w+\.\w{2,3}/}
  validates :email, :uniqueness => true
  validates :age, :inclusion => {:in => 5..99}
  validates :phone, :format => {:with =>  /\d{3}.*\d{3}.*\d{4}/ }



  def name
  	self[:first_name].to_s + " " + self[:last_name].to_s
  end

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
    age
  end
end

