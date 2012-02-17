class OnLoan < ActiveRecord::Base

belongs_to :cadet 
belongs_to :item
end
