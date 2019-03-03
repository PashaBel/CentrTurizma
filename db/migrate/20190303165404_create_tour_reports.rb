class CreateTourReports < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_report do |t|

      t.timestamps
    end
  end
end
