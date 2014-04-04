require 'fileutils'
require 'pry'

task :default => 'reset:clean'

namespace :reset do
  desc "reset"
  task :clean do
    puts "All those..."
    puts "moments... "
    puts "will be lost in time, like tears...in... rain."
    keepers = ["Gemfile", "readme.md", "Gemfile.lock", "Guardfile", "lib", "Rakefile", "spec", "spec/spec_helper.rb"]
    Dir.glob("**/*").each do |entry|
      rm_rf(entry) unless keepers.include?(entry)
    end
  end
end
