class TownHealthRecord < ActiveRecord::Base
 validates :geography, length: { minimum:2, maximum:22}
end

#checks validation in the model to check if geography value is
#already there so no duplicate data.
