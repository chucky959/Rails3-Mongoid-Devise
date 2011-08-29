class Beercomment
  include Mongoid::Document
  field :name, :type => String
  field :content, :type => String
 
  embedded_in :beer, :inverse_of => :beercomments
end
