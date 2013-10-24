require_relative '../app/models/teacher'
require 'faker'
require 'date'

module TeachersImporter
  @genders = ["Male","Female"]
  def self.create
    9.times do
       Teacher.create!(
         :first_name => Faker::Name.first_name,
         :last_name => Faker::Name.last_name,
         :gender => @genders.sample,
         :email => Faker::Internet.email,
         :phone => Faker::PhoneNumber.phone_number
         )
    end
  end
end
