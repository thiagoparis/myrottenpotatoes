# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed the RottenPotatoes DB with some movies.

some_movies = [
  {:title => 'Star Wars', :rating => 'PG', :release_date => '25/05/1977'},
  {:title => 'Requiem for a Dream', :rating => 'R', :release_date => '27/10/2000'},
  {:title => 'Field of Dreams', :rating => 'PG', :release_date => '21-Apr-1989'},
  {:title => 'Aladdin', :rating => 'G', :release_date => '25/11/1992'},
  {:title => 'When Harry Met Sally', :rating => 'R', :release_date => '21-Jul-1989'},
  {:title => 'The Help', :rating => 'PG-13', :release_date => '10-Aug-2011'},
  {:title => 'Raiders of the Lost Ark', :rating => 'PG', :release_date => '12-Jun-1981'}
]

some_movies.each do |movie|
  Movie.create!(movie)
end

