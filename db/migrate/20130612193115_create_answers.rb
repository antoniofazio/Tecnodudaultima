class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :positive_rate
      t.integer :negative_rate
      t.boolean :teacher_approval
      t.integer :user__id
      t.integer :question_id

      t.timestamps
    end
  end
end
