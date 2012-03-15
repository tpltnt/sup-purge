#require "sup-purge2"
# for assert()
require 'test/unit/assertions'
World(Test::Unit::Assertions)

dumpfilename = 'features/step_definitions/supdump'
supdir = '../../.sup'

Given /^I have a sup\-dir$/ do
  assert( File.directory?(supdir) )
end

Then /^i should be able to find the maildirs$/ do
  pending # express the regexp above with the code you wish you had
end
