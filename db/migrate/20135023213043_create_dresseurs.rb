class CreateDresseurs < ActiveRecord::Migration
  def up
    create_table :dresseurs do |t|
      t.string :name
      t.string :url
      t.string :email
      t.timestamps
    end
  end

  def down
    drop_table :dresseurs
  end
end
