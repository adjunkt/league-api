class CreateJoinTableOrganizationSport < ActiveRecord::Migration[5.0]
  def change
    create_join_table :organizations, :sports do |t|
      t.index [:organization_id, :sport_id]
      t.index [:sport_id, :organization_id]
    end
  end
end
