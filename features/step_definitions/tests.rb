# for assert()
require 'test/unit/assertions'
World(Test::Unit::Assertions)


dumpfilename = 'features/step_definitions/supdump'
supdir = '../../.sup'

Given /^I have a sup\-dir$/ do
  assert( File.directory?(supdir) )
end

When /^i call the script with the sup\-dir as an argument$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^i should be able to find the maildirs$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I have a dumpfile$/ do
  assert( File.exists?(dumpfilename)  )
end

When /^I open the file$/ do
  @dumpfile = File.open(dumpfilename)
end

Then /^each line should follow a pattern$/ do
  @allok = true
  @dumpfile = File.open(dumpfilename)
  @dumpfile.each do |line|
    if nil == line.match(/.*\@.*\s\(.*\)/) then
      @allok = false
    end
  end
  # since a few wrong indexes are added on purpose, not all must bo ok
  assert( !@allok )
end
