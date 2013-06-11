class Comment < ActiveRecord::Base
  attr_accessible :content, :pin_id, :user_id

  belongs_to :pin
end
