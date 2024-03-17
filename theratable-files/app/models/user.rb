class User < ApplicationRecord
    belongs_to :account, :inverse_of :user
    accepts_nested_attributes_for :account

    has_one :client, :inverse_of :user
    accepts_nested_attributes_for :client

    has_one :flexologist, :inverse_of :user
    accepts_nested_attributes_for :flexologist

    has_secure_password
    # add validation to password length 
    validates_presence_of :first_name, :last_name, :address, :phone_number, :zipcode, :email, :password

    validates :phone_number, uniqueness: true, format: { with: /\A\d{3}-\d{3}-\d{4}\z/, message: "should be in the format xxx-xxx-xxxx" }  

    validates :zipcode, format: { with: /\A\d{5}\z/, message: "should be in the format 12345" }

    validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, 
    message: "is not a valid email address" }

    validates :password, length: { minimum: 8, maximum: 15}

end
