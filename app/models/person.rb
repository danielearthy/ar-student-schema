require_relative '../../db/config'
require 'date'

class Person < ActiveRecord::Base
  validates :email, :format => { :with => /\w+@\w+\.\w{2,3}/}
  validates :email, :uniqueness => true
  validates :phone, :format => {:with =>  /\d{3}.*\d{3}.*\d{4}/ }

end

