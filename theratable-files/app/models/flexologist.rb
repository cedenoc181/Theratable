class Flexologist < ApplicationRecord

    has_many :schedules, dependent: :destroy, inverse_of: :flexologist
    accepts_nested_attributes_for :schedules

    belongs_to :account, :inverse_of => :flexologist
    accepts_nested_attributes_for :account

    belongs_to :user, :inverse_of => :flexologist
    accepts_nested_attributes_for :user

    
end
