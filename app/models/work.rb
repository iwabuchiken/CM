class Work < ActiveRecord::Base
  
    has_one :music
    has_many :work_memo
  
end
