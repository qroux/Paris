require 'csv'

csv_options = { col_sep: ';', headers: :first_row }
filepath = File.join(Rails.root, 'storage', 'jobs.csv')

error_counter = 0

CSV.foreach(filepath, csv_options) do |row|
  job = Job.new(year: row["Année"],
              collectivity: row["Collectivité"],
              contract_type: row["Type de contrat"],
              position: row["Emplois"],
              level: row["Niveau"],
              speciality: row["Spécialité"])

  if job.save
    puts "#{ row["Emplois"]} job created"
  else
    puts "#{ row["Emplois"]} job not created (missing field)"
    error_counter += 1
  end

  puts "-----------------"
end

puts "number of Job creation failure : #{error_counter}"

      # t.string :year, null: false
      # t.string :collectivity, null: false
      # t.string :contract_type, null: false
      # t.string :position, null: false
      # t.string :level, null: false
      # t.string :speciality
      # t.integer :men_number
      # t.integer :women_number
