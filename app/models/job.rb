class Job < ApplicationRecord
  validates :year, :collectivity, :contract_type, :position, presence: true
end

      # t.string :year, null: false
      # t.string :collectivity, null: false
      # t.string :contract_type, null: false
      # t.string :position, null: false
      # t.string :level, null: false
      # t.string :speciality
      # t.integer :men_number
      # t.integer :women_number
