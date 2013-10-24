require_relative '../../db/config'
require_relative 'person'
require 'date'

class Teacher < Person
  validates :email, :format => { :with => /\w+@\w+\.\w{2,3}/}
  validates :email, :uniqueness => true
  validates :phone, :format => {:with =>  /\d{3}.*\d{3}.*\d{4}/ }

  has_many :student_teachers, :foreign_key => :teacher_id
  has_many :students, :through => :student_teachers


  def name
  	self[:first_name].to_s + " " + self[:last_name].to_s
  end
  
end

