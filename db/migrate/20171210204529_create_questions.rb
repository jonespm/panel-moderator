class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :value
      t.integer :votecount
      t.boolean :selected

      t.timestamps
    end
  end
end
