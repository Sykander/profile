class Post < ApplicationRecord
  belongs_to :user, :counter_cache => true
  belongs_to :discussion, :counter_cache => true
  validates_presence_of :title
  validates_length_of :title, :maximum => 255
  validates_presence_of :body
  validates_length_of :body, :maximum => 10000
end
