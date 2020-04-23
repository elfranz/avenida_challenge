require 'rails_helper'

describe Order do
  subject(:order) do
    create(:order)
  end

  it { is_expected.to be_valid }

  context 'when not given a customer id' do
    subject do
      described_class.new(customer_id: nil)
    end
    
    it 'should not be saved' do
      expect(subject.save).to be(false)
    end
  end
end