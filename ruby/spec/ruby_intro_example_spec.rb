# frozen_string_literal: true
# helpful rspec matching https://www.tutorialspoint.com/rspec/rspec_matchers.htm

require './spec/spec_helper.rb'
require './ruby_intro_example.rb'

RSpec.describe 'RubyIntroMethods' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    it 'string matches' do
      expect{string_matches?(nil, 'hello')}.to raise_error(ArgumentError)
      expect{string_matches?('hello', nil)}.to raise_error(ArgumentError)
      expect(string_matches?('hello', 'hello')).to be_truthy
      expect(string_matches?('hello', 'world')).to be_falsey
      expect(string_matches?('hello', 'Hello')).to be_falsey
      expect(string_matches?('hello', 'hello world')).to be_falsey
    end
  end
end
