class Music < ActiveRecord::Base
    has_many :memo
    belongs_to :work
    
end
