require_relative '../app/models/student_teacher'
require 'date'

module StudentTeachersImporter
  def self.create
    200.times do
       StudentTeacher.create!(
       :teacher_id => Teacher.all.sample.id,
       :student_id => Student.all.sample.id
      )
    end
  end
end
