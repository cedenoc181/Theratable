class Payment < ApplicationRecord

    belongs_to :client
    accepts_nested_attributes_for :client
     
    belongs_to :booking, :inverse_of :payments
    accepts_nested_attributes_for :booking

end
