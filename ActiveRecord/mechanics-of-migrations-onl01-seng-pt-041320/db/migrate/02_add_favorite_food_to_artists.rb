class AddFavoriteFoodToArtists < ActiveRecord::Migration[5.2]
    def change
        add_column :artists, :favorte_food, :string
    end
end