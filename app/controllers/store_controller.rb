class StoreController < ApplicationController
  def index
   @items = Item.all
   @cadets = Cadet.all
  end
end
