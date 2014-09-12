# Load files in lib
Dir.glob('lib/*.*').each do |path|
  require "./#{path}"
end

# RSpec.configure do |config|
  # RSpec reads command line configuration options from files in two different
  # locations:
  #
  # Local: "./.rspec" (i.e. in the project's root directory)
  # Global: "~/.rspec" (i.e. in the user's home directory)
  #
  # Options declared in the local file override those in the global file, while
  # those declared in RSpec.configure will override any ".rspec" file.
# end
