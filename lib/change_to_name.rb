require_relative '../app/models/person'
require 'date'

module ChangeToName
  def self.update
    Person.all.each do |p|
    	p.update(:name => "#{p.first_name} #{p.last_name}")
    end
  end
end
