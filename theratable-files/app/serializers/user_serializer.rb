class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :address, :address_two, :state, :zipcode, :phone_number, :account_id, :client_id, :flex_id
end
