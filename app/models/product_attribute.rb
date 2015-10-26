class ProductAttribute < ActiveRecord::Base
  belongs_to :product
  belongs_to :facet, polymorphic: true
end
