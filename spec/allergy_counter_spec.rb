require 'allergy_counter'
require 'rspec'
require 'pry'

describe('AllergyCounter') do
  it('it returns eggs/ peanuts for a score of 3') do
    expect(AllergyCounter.new(3).allergies).to(eq(["eggs", "peanuts"]))
  end

  it('it returns strawberries, tomatoes, pollen for a score of 3') do
    expect(AllergyCounter.new(88).allergies).to(eq(["strawberries", "tomatoes",
      "pollen"]))
  end

  it('it returns peanuts shellfish chocolate cats for a score of 3') do
    expect(AllergyCounter.new(166).allergies).to(eq(["peanuts", "shellfish",
      "chocolate", "cats"]))
  end
end
