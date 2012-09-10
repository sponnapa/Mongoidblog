class Comment
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  include Mongoid::Ancestry
  has_ancestry


  field :name, :type => String
  field :content, :type => String
  field :published_on, :type => Date
  embedded_in :article, :inverse_of => :comments


  validates :name, :presence=>true
  validates :content, :presence=>true

end
