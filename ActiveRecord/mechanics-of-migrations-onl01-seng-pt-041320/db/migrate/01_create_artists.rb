class CreateArtists < ActiveRecord::Migration[5.2]
    # when migration is run
    def up

    end

    # when migration is rolled back
    def down

    end

    # common for basic migrations
    def change
        create_table :artists do |t|
            t.string :name
            t.string :genre
            t.integer :age
            t.string :hometown
        end
    end
end