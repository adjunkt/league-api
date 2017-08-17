class CreateLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :leagues do |t|
      t.string :name, null: false

      t.belongs_to :organization, index: true
      t.belongs_to :sport, index: true

      t.timestamps
    end
  end
end
