class BookingSerializer < ActiveModel::Serializer
  attributes :id, :status, :title, :date, :start_time, :end_time, :refund, :account_id, :schedule_id, :session_id
end
