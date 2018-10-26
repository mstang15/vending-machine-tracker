require 'rails_helper'

describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
  end
  # describe 'methods' do
  #   it 'can calculate average price' do
  #     sam = Owner.create(name: "Sam's Snacks")
  #     machine_1=sam.machines.create(location: "Don's Mixed Drinks")
  #     machine_2=sam.machines.create(location: "Turing Basement")
  #     snack_1 = machine_1.snacks.create(name:"White Castle Burger", price: 100, quantity: 4)
  #     snack_2 = machine_1.snacks.create(name:"Pop Rocks", price: 200, quantity: 2)
  #
  #     expect(average_snack_price).to eq(400)
  #   end
  # end
end
