# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
  end
  #flunk "Unimplemented"
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  assert page.body =~ /#{e1}.*#{e2}/m, "#{e1} was not before #{e2}"
  #flunk "Unimplemented"
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  ratings = rating_list.split(',')
  ratings.each do |rating|
    step %Q{I #{uncheck}check "ratings_#{rating}"}
  end
  #flunk "Unimplemented"
end

Then /I should see all the movies/ do
  # Make sure that all the movies in the app are visible in the table
  Movie.all.each do |movie|
    step %Q{I should see "#{movie.title}"}
  end
  #flunk "Unimplemented"
end

Then /I should (not )?see the following movies: (.*)/ do |not_see, movie_list|
  movies = movie_list.split(',')
  movies.each do |movie|
    step %Q{I should #{not_see }see "#{movie}"}
  end
end

Then /^I should see all movies sorted by (.*) in ([^\s}]+) order$/ do |sort_by, order|
  sort_method = sort_by.gsub(/ /,'_')
  field_values = Movie.all.map{|x| x.send(sort_method)}.sort
  field_values.reverse! if order == 'descending'
  field_values.each_cons(2) do |a,b|
    step %Q(I should see "#{a}" before "#{b}")
  end
end
