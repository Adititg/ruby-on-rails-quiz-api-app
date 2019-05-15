class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :opt1
      t.string :opt2
      t.string :opt3
      t.string :opt4
      t.integer :answer
      t.timestamps
    end
  end
end
