class Author
  include Mongoid::Document
  field :name, :type => String
  key :name

  references_many :articles
end
