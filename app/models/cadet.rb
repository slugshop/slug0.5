class Cadet < ActiveRecord::Base

has_many :items, :dependent => :destroy
has_many :on_loans, :dependent => :destroy
belongs_to :barrack
  

def fullname
last+', '+first
end
end
