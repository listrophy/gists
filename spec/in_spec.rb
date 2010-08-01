require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'Object#in?' do

  context 'when self is in the enumerable' do

    class Includes
      include Enumerable
      def include? *args
        true
      end
    end

    it 'returns true' do
      self.in?(Includes.new).should be_true
    end

  end

  context 'when self is not in the enumerable' do

    class DoesNotInclude
      include Enumerable
      def include? *args
        false
      end
    end

    it 'returns false' do
      self.in?(DoesNotInclude.new).should be_false
    end

  end

end
