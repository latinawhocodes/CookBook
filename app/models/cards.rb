class Card < ActiveRecord::Base
    belongs_to :user
end 

#add validation methods once app is working and remove if/else statements from CardsController