json.array!(@genetic_banks) do |genetic_bank|
  json.extract! genetic_bank, :id, :codeBreeder, :breeder, :analysedYear, :status, :variety, :numPlants, :picture, :color, :scent, :headSize, :petals, :steamLength, :production, :opening, :flowerAbnormality, :sheets, :hawthorn, :father, :mother
  json.url genetic_bank_url(genetic_bank, format: :json)
end
