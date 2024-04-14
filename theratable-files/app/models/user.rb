# app/models/user.rb
class User < ApplicationRecord

    validate :valid_zip_code_for_state
  
    belongs_to :account, inverse_of: :users
    accepts_nested_attributes_for :account
  
    has_one :client, inverse_of: :user
    accepts_nested_attributes_for :client
  
    has_one :flexologist, inverse_of: :user
    accepts_nested_attributes_for :flexologist
  
    has_secure_password
  
    validates_presence_of :first_name, :last_name, :address, :phone_number, :zip_code, :state, :email, :password
  
    validates :phone_number, uniqueness: { case_sensitive: true, message: "has already been taken" },
                              format: { with: /\A\d{3}-\d{3}-\d{4}\z/, message: "should be in the format xxx-xxx-xxxx" }
  
    validates :zip_code, format: { with: /\A\d{5}\z/, message: "should be in the format 12345" }
  
    validates :email, uniqueness: { case_sensitive: true, message: "has already been taken" },
                      format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "is not a valid email address" }
  
    validates :password, length: { minimum: 8, maximum: 15, message: "length should be between 8 and 15 characters" }
    validates_confirmation_of :password, message: "does not match the password"
  
    def valid_zip_code_for_state
      unless ZipCodeValidator.valid_for_state?(self.zip_code, self.state)
        errors.add(:zip_code, "is not valid for the specified state")
      end
    end

    def self.count_users_in_zip_code(zip_code)
      where(zip_code: zip_code).count
    end

    def self.count_users_in_state(state)
      where(state: state).count
    end

    def self.count_users_in_city(city)
      where(city: city).count
    end

    def self.find_users_by_first_name(first_name)
      where("first_name LIKE ?", "%#{first_name}%")
    end

    def self.find_users_by_last_name(last_name)
      where("last_name LIKE ?", "%#{last_name}%")
    end
end
  