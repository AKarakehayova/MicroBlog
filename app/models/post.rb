class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true, length: {maximum: 256}
end
