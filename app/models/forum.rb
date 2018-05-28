class Forum < ApplicationRecord
  belongs_to :user
  has_many :discussions, :dependent => :delete_all
  has_many :posts, through: :discussions
  validates_presence_of :title
  validates_length_of :title, :maximum => 255
end
