class Post < ActiveRecord::Base
  has_many :tags, dependent: :destroy
  validates :title, presence: true
  validates :text, presence: true, length: {maximum: 256}
end
