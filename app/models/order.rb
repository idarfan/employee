class Order < ActiveRecord::Base
  attr_accessible :shipping_name, :billing_name
end
