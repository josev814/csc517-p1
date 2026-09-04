require 'simplecov'
require 'simplecov-console'

SimpleCov.start do
  add_filter '/spec/'
  add_filter '/vendor/'
  add_filter '/config/'
end

SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::Console,
  SimpleCov::Formatter::SimpleFormatter
])

RSpec.configure do |config|
  config.after(:suite) do
    if defined?(SimpleCov)
      SimpleCov.result.format!
    end
  end
end