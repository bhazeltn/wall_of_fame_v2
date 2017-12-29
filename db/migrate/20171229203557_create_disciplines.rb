class CreateDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplines do |t|
      t.belongs_to :level, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
