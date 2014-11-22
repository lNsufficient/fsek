class CreateCafeWorks < ActiveRecord::Migration
  def change
    create_table :cafe_works do |t|
      t.datetime "start"
      t.datetime "end"	
      t.timestamps
    end
  end
end
