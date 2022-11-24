
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_country
    # seed.generate_states
  end

  def generate_country
    20.times do |i|
      country = Country.create!(
        country_name: Faker::Address.country,
      )
      20.times do |i|
        state = State.create!(
          state_name: Faker::Address.city,
          country_id: country.id
        )

        puts ""
      end
    end
  end
end




Seed.begin