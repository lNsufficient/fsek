class CreateCafeWorksAndProfiles < ActiveRecord::Migration
  def change
    create_table :cafe_works_profiles, id:false do |t|
      t.integer "profile_id"
      t.integer "cafe_work_id"
    end
  end
end
