class CreateProgrammingLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :programming_languages do |t|
      t.string :name
      t.string :release_date

      t.timestamps
    end
  end
end
