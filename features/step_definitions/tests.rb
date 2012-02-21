# for assert()
require 'test/unit/assertions'
World(Test::Unit::Assertions)

Given /^I have a dumpfile$/ do
  File.exists?("supdump")
end

When /^i call the script with the dumpfile as an argument$/ do
  @dumpfilename = 'features/step_definitions/supdump'
  system './sup-purge #{dumpfilename}'
end

Then /^i should be able to open the dumpfile$/ do
  assert( system './sup-purge features/step_definitions/supdump' )
end

When /^I open the file$/ do
  @dumpfile = File.open("supdump")
end

Then /^each line should follow a pattern$/ do
  pending # express the regexp above with the code you wish you had
end
