class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :year
      t.integer :question_id

      t.timestamps
    end
  end
end
