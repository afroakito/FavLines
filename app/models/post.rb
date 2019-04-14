class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 100}}
  validates :title, {presence: true}
end
