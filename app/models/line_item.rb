# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  product_id :integer
#  cart_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  accepts_nested_attributes_for :product
  attr_accessible :cart_id, :product_id, :product_attributes, :product
end
