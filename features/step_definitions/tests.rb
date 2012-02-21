# for assert()
require 'test/unit/assertions'
World(Test::Unit::Assertions)


dumpfilename = 'features/step_definitions/supdump'

Given /^I have a dumpfile$/ do
  assert( File.exists?(dumpfilename) )
end

When /^i call the script with the dumpfile as an argument$/ do
  assert( system "./sup-purge #{dumpfilename}" )
end

Then /^i should be able to open the dumpfile$/ do
  assert( system "./sup-purge #{dumpfilename}" )
end

When /^I open the file$/ do
  @dumpfile = File.open(dumpfilename)
end

Then /^each line should follow a pattern$/ do
  @allok = true
  @dumpfile = File.open(dumpfilename)
  # test each line for the pattern
  @dumpfile.each do |line|
    # pattern: random_string@random_string+" "+"("tag1" "tag2" "tagn")"
    puts line.match(/.*\@.*\s\(.*\)/)
  end
  pending
end
