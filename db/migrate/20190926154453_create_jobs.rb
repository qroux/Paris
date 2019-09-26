class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :year, null: false
      t.string :collectivity, null: false
      t.string :contract_type, null: false
      t.string :position, null: false
      t.string :level, default: "nc"
      t.string :speciality
      t.integer :men_number
      t.integer :women_number

      t.timestamps
    end
  end
end
