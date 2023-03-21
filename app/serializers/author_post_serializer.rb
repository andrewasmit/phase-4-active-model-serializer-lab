class AuthorPostSerializer < ActiveModel::Serializer
  has_many :posts
  has_many :post_tags
  has_many :tags, through: :post_tags
  attributes :title, :short_content, :tags

  def short_content
    "#{self.object.content[0..39]}..."
  end

end
