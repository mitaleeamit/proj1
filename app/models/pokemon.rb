class Pokemon < ActiveRecord::Base
    # Question 1
    belongs_to :trainer
end
