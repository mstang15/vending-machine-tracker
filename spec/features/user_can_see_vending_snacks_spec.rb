require 'rails_helper'

describe 'as a user' do
  it 'i can see snacks from a vending machine' do
    sam = Owner.create(name: "Sam's Snacks")
    machine_1=sam.machines.create(location: "Don's Mixed Drinks")
    machine_2=sam.machines.create(location: "Turing Basement")
    snack_1 = machine_1.snacks.create(name:"White Castle Burger", price: 350, quantity: 4)
    snack_2 = machine_1.snacks.create(name:"Pop Rocks", price: 150, quantity: 3)

    visit machine_path(machine_1)

    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_2.name)
  end

  # it 'i can see average price of all snacks' do
  #   sam = Owner.create(name: "Sam's Snacks")
  #   machine_1=sam.machines.create(location: "Don's Mixed Drinks")
  #   machine_2=sam.machines.create(location: "Turing Basement")
  #   snack_1 = machine_1.snacks.create(name:"White Castle Burger", price: 100, quantity: 4)
  #   snack_2 = machine_1.snacks.create(name:"Pop Rocks", price: 200, quantity: 2)
  #   visit machine_path(machine_1)
  #
  #   expect(page).to have_content("Average price is 4 dollars")
  # end
end
