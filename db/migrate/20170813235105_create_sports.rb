class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.integer :organization_id, null: false
      t.integer :sport_type_id, null: false

      t.index :organization_id
      t.index :sport_type_id

      t.timestamps
    end
  end
end
