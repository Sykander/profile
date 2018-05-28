class Discussion < ApplicationRecord
  has_many :posts, :dependent => :delete_all
  belongs_to :user
  belongs_to :forum, :counter_cache => true
  validates_presence_of :title
  validates_length_of :title, :maximum => 255
end
