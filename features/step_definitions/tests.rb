require 'test/unit/assertions'
World(Test::Unit::Assertions)

Given /^I have a dumpfile$/ do
  File.exists?("supdump")
end

When /^i call the script with the dumpfile as an argument$/ do
  system './sup-purge features/step_definitions/supdump'
end

Then /^i should be able to open the dumpfile$/ do
  assert( system './sup-purge features/step_definitions/supdump' )
end
