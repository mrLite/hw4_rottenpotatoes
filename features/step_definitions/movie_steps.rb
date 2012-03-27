Given /^the following movies exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "(.*)" should be "(.*)"$/ do |movie, director|
  m = Movie.find_by_title(movie)
  m.director.should eq(director)
end
