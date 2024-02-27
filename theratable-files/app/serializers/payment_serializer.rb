class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :sixteen_digits, :exp_dates, :security_digits, :card_holder_name
end
