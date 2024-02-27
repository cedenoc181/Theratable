class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :star_time, :end_time, :date, :account_id, :session_id, :flexologist_id
end
