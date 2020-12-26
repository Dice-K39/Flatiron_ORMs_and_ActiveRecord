class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        list = Character.where(show_id: self.id)
        list.map do |a|
            "#{a.actor.first_name} #{a.actor.last_name}"
        end
    end
end