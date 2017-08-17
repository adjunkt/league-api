class CreateLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :leagues do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_reference :leagues, :organizations, index: true
    add_reference :leagues, :sports, index: true

  end
end
