require 'fileutils'
require 'pry'
require 'colorize'

task :default => 'help'

desc 'instructions'
task :help do
system("clear")
message = <<EOF
CODE RETREAT!
=============

Coderetreat is a day-long, intensive practice event, focusing on the fundamentals
of software development and design. By providing developers the opportunity to
take part in focused practice away from the pressures of 'getting things done',
the coderetreat format has proven itself to be a highly effective means of skill
improvement

## The 4 Principals to Focus On

- Small
- DRY
- Well Named
- Tested

# Instructions
To begin the code retreat run `rake code:start`
After 45 minutes we'll run `rake code:clean`
EOF
puts message
end

namespace :code do
  desc 'reset'
  task :clean do
    quotes = ['All those...', 'moments...', 'will be lost in time, like tears...', 'in...', 'rain.']
    quotes.each do |quote|
      puts quote.blue
      sleep 0.5
    end
    keepers = %w(Gemfile readme.md Gemfile.lock Guardfile lib Rakefile spec spec/spec_helper.rb .rspec)
    Dir.glob("**/*").each do |entry|
      rm_rf(entry) unless keepers.include?(entry)
    end
  end

  desc 'Start guard to run rspec and rubocop'
  task :start do
    puts 'Starting Guard...'
    puts 'RSpec and Rubocop will run automatically after each file save'.green
    puts 'To exit back to the bash prompt type `exit`'
    system('bundle exec guard')
  end
end
