
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_database
    # seed.generate_states
  end

  def generate_database
    lifts = [1,10,5,2,25,32,15]
        cost = [2.40, 3.40, 5.50, 4.70, 3.50]
    20.times do |i|
      country = Country.create!(
        country_name: Faker::Address.country,
      )
        state = State.create!(
          state_name: Faker::Address.city,
          country_id: country.id
        )
          resort = Resort.create!(      
            resort_name: Faker::FunnyName.two_word_name,
            number_of_lifts: lifts.sample,
            ticket_cost: cost.sample,
            state_id: state.id
          )
        puts "database seeded"
    end
  end
end
 




Seed.begin