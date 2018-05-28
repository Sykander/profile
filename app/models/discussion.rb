class Discussion < ApplicationRecord
  has_many :posts
  belongs_to :user
  belongs_to :forum
end
