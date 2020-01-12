class Post < ApplicationRecord
  validates :title, :hook, :rich_body, presence: {message: "musisz wpisac"}
  validates :title, uniqueness: true

  has_one_attached :picture
  has_rich_text :rich_body
end
