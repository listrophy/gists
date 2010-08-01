require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'random_in' do

  before do
    self.should_receive(:rand).with(4).exactly(4).times.and_return(0, 1, 2, 3)
  end

  it 'works with arrays' do
    (0..3).each do |expect|
      random_in([0, 1, 2, 3]).should == expect
    end
  end

  it 'works with parameter lists' do
    (0..3).each do |expect|
      random_in(0,1,2,3).should == expect
    end
  end

  it 'works with ranges' do
    (0..3).each do |expect|
      random_in(0..3).should == expect
    end
  end

end
