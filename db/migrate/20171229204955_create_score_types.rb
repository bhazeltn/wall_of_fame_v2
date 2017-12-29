class CreateScoreTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :score_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
