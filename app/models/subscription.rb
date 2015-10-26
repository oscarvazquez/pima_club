class Subscription < ActiveRecord::Base
  belongs_to :user
  has_many :sub_pros
  has_many :products, through: :sub_pros
end
