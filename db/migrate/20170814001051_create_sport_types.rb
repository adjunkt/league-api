class CreateSportTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :sport_types do |t|
      t.string :name, limit: 128, null: false

      t.timestamps
    end
  end
end
