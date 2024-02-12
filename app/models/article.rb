class Article < ApplicationRecord
  belongs_to :user
  has_many :article_likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  enum status: { draft: "draft", published: "published" }
end
