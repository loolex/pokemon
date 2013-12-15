class AddReferencesToDresseurs < ActiveRecord::Migration
  def up
    add_column :pokemons, :dresseur_id, :integer
  end

  def down
    remove_column :pokemons, :dresseur_id
  end
end
