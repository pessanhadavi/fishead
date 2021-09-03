class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.text :option
      t.boolean :correct_option
      t.references :question, null: false, foreign_key: true
      t.references :quizroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
