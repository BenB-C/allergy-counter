class AllergyCounter
  @@allergy_hash = {
    1 => "eggs",
    2 => "peanuts",
    4 => "shellfish",
    8 => "strawberries",
    16 => "tomatoes",
    32 => "chocolate",
    64 => "pollen",
    128 => "cats"
  }

  def initialize(score)
    @total_score = score
  end

  def allergies
    leftovers = @total_score
    allergies_array = []
    @@allergy_hash.keys.reverse.each do |score|
      if leftovers >= score
        leftovers -= score
        allergies_array.prepend(@@allergy_hash.fetch(score))
      end
    end
    allergies_array
  end
end
