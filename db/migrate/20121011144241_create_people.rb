require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreatePeople < ActiveRecord::Migration
  def change
  	create_table :people do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthday
      t.string :email
      t.string :phone
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
