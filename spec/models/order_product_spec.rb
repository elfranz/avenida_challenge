require 'rails_helper'

describe OrderProduct do
  let(:order) { create(:order) }
  let(:product) { create(:product) }

  subject(:order_product) do
    OrderProduct.new(order: order, product: product, quantity: Faker::Number.number(digits: 4))
  end

  it { is_expected.to be_valid }

  it "is not valid without a order" do
    subject.order = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a product" do
    subject.product = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a quantity" do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  context 'with factory' do
    subject(:order_product) do
      create(:order_product)
    end

    it { is_expected.to be_valid }
  end
end