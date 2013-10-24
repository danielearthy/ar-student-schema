require_relative '../../db/config'
require_relative 'person'
require 'date'

class Student < Person
  validates :age, :inclusion => {:in => 5..99}
 
  has_many :student_teachers, :foreign_key => :student_id
  has_many :teachers, :through => :student_teachers
  
  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
    age
  end
end

