Given /^I have a dumpfile$/ do
  File.exists?("supdump")
end

When /^i call the script with the dumpfile as an argument$/ do
  sup-purge supdump
end

Then /^i should be able to open the dumpfile$/ do
  pending # express the regexp above with the code you wish you had
end
