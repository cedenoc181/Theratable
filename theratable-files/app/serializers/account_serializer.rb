class AccountSerializer < ActiveModel::Serializer
  attributes :id, :number, :type, :username, :password_digest, :admin, :activation_token, :reset_password_token, :confirmation_token, :billing_address, :payment_method, :subscription_plan, :subscription_expiry_date
end
