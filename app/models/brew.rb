class Brew
  include Mongoid::Document
  field :brewname, :type => String
  field :city, :type => String
  field :state, :type => String
  field :zip, :type => Integer

  key :brewname

  references_many :beers
end
