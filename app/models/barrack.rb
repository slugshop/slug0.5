class Barrack < ActiveRecord::Base

has_many :cadet, :dependent => :destroy



end
