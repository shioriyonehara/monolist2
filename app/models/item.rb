class Item < ActiveRecord::Base
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  
  def item_title  
    item['itemName']
  end
  
  def item_large_image
    item['mediumImageUrls'].first['imageUrl'].gsub('?_ex=128x128', '')
  end
  
  def item_detail_page_url
    item['itemUrl']
  end
end
