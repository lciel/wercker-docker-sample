require 'spec_helper'

describe 'SampleModel' do
  describe 'success case' do
    it { expect(true).to be_truthy }
  end

  describe 'fail case' do
    it { expect(true).to be_falsey }
  end
end

