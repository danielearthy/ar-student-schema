require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class ChangePeopleName < ActiveRecord::Migration
  def change
      add_column :people,:name,:string 
  end
end