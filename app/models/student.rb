require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
  
  def name
  	self[:first_name].to_s + " " + self[:last_name].to_s
  end

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
    age
  end
end

 # student = Student.new
 # student.assign_attributes(3
 #      :first_name => "Kreay",
 #      :last_name => "Shawn",
 #      :birthday => Date.new(1989,9,24),
 #      :gender => 'female',
 #      :email => 'kreayshawn@oaklandhiphop.net',
 #      :phone => '(510) 555-1212 x4567'
 #    )

 # p student

 # p student.name
 # p student.age