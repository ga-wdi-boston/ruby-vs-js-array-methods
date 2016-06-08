require_relative '../lib/people.rb'

people = People.new.people
total = people.count.to_f

female = people.select { |person| person.gender == 'f' }.length
female_percentage = female / total
p "female: #{female}, total: #{total}, female_percentage: #{female_percentage}"

older_people = people.select { |person| person.age > 25 }.length
p "older people: #{older_people}"

younger_people = people.select { |person| person.age < 25 }.length
p "younger people: #{younger_people}"

letter_matches = people.select { |person| person.given_name[0] == person.surname[0] }.length
p "letter_matches: #{letter_matches}"

letter_matches_people = people.select { |person| person.given_name[0] == person.surname[0] }
# I had this here as a check
# puts "letter_matches_people: #{letter_matches_people}"

average_age = people.reduce(0) { |result, element| result + element.age } / total
p "avg age: #{average_age}"
