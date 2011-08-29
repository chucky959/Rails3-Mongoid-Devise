class Beer
  include Mongoid::Document
  field :name, :type => String
  field :rating, :type => Float
  field :type, :type => String
  field :description, :type => Float

  key :name

  embeds_many :beercomments

  referenced_in :brew
end
