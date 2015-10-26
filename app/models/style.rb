class Style < ActiveRecord::Base
	has_many :product_attributes, as: :facet, dependent: :destroy
end
