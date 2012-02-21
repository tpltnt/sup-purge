# for assert()
require 'test/unit/assertions'
World(Test::Unit::Assertions)

Given /^I have a dumpfile$/ do
  @dumpfilename = 'features/step_definitions/supdump'
  assert( File.exists?(@dumpfilename) )
end

When /^i call the script with the dumpfile as an argument$/ do
  @dumpfilename = 'features/step_definitions/supdump'
  assert( system "./sup-purge #{@dumpfilename}" )
end

Then /^i should be able to open the dumpfile$/ do
  @dumpfilename = 'features/step_definitions/supdump'
  assert( system "./sup-purge #{@dumpfilename}" )
end

When /^I open the file$/ do
  @dumpfilename = 'features/step_definitions/supdump'
  @dumpfile = File.open(@dumpfilename)
end

Then /^each line should follow a pattern$/ do
  @allok = true
  @dumpfilename = 'features/step_definitions/supdump'
  @dumpfile = File.open(@dumpfilename)
  # test each line for the pattern
  @dumpfile.each do |line|
    # pattern: random_string@random_string+" "+"("tag1" "tag2" "tagn")"
    puts line
  end
  pending
end
