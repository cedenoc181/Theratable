class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :start_time
      t.string :end_time
      t.string :appointment_date
      t.integer :account_id
      t.integer :flexologist_id
      t.integer :booking_id

      t.timestamps
    end
  end
end
