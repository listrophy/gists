require 'spec_helper'

describe 'String#surround' do

  context 'given one arg' do
    it 'surrounds the string with the arg' do
      'foo'.surround('bar').should == 'barfoobar'
    end
  end

  context 'given two args' do
    it 'prepends the first arg' do
      'bar'.surround('foo', 'baz').should match(/^foobar/)
    end
    it 'appends the second arg' do
      'bar'.surround('foo', 'baz').should match(/barbaz$/)
    end
  end

end
