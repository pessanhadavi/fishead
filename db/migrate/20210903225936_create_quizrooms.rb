class CreateQuizrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :quizrooms do |t|
      t.string :name

      t.timestamps
    end
  end
end
