class Paypal < ActiveRecord::Base
  attr_accessible :status, :user_id
  belongs_to :user
end
