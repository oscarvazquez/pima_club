class SubPro < ActiveRecord::Base
  belongs_to :subscription
  belongs_to :product
end
