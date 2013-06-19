class CreateUserCareers < ActiveRecord::Migration
  def change
    create_table :user_careers do |t|
      t.integer :user_id
      t.integer :career_id

      t.timestamps
    end
  end
end
