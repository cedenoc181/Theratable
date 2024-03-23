class Flexologist < ApplicationRecord

    # will consider adding new tables for reviews, many relationship to client 
    has_many :schedules, dependent: :destroy, inverse_of: :flexologist
    accepts_nested_attributes_for :schedules

    has_many :bookings, through: :schedule, dependent: :destroy
    accepts_nested_attributes_for :bookings

    belongs_to :account, :inverse_of :flexologist
    accepts_nested_attributes_for :account

    belongs_to :user, :inverse_of :flexologist
    accepts_nested_attributes_for :user

    def profile_card_info
        "#{location} 
         #{experience} 
         #{bio}
        "
        # raiting and studio affiliations would be good to add
    end

    def future_schedule
            #SQL Query search for future appointments
        self.schedules.where("appointment_date >= ?", Date.today).order(appointment_date: :asc)
      end
      

end
