require 'mida/vocabulary'

module Mida
  module SchemaOrg

    autoload :Thing, 'mida/vocabularies/schemaorg/thing'
    autoload :Place, 'mida/vocabularies/schemaorg/place'
    autoload :Organization, 'mida/vocabularies/schemaorg/organization'
    autoload :LocalBusiness, 'mida/vocabularies/schemaorg/localbusiness'
    autoload :FoodEstablishment, 'mida/vocabularies/schemaorg/foodestablishment'

    # An ice cream shop
    class IceCreamShop < Mida::Vocabulary
      itemtype %r{http://schema.org/IceCreamShop}i
      include_vocabulary Mida::SchemaOrg::Thing
      include_vocabulary Mida::SchemaOrg::Place
      include_vocabulary Mida::SchemaOrg::Organization
      include_vocabulary Mida::SchemaOrg::LocalBusiness
      include_vocabulary Mida::SchemaOrg::FoodEstablishment
    end

  end
end
