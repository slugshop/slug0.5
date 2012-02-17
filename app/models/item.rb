class Item < ActiveRecord::Base

default_scope :order => "itemName"
belongs_to :cadet
has_many :on_loan, :dependent => :destroy
has_many :line_items
before_destroy :ensure_not_referenced_by_any_line_item

private

def ensure_not_referenced_by_any_line_item
  if line_items.empty?
	return true
     else
	errors.add(:base, 'Line Items present')
	return false
  end 
end 

#def self.availibility
#	find(:all, :order=>"itemName")
#end

end
