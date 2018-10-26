require 'rails_helper'

describe 'snack show page' do
  it 'can show list of attributes' do
    sam = Owner.create(name: "Sam's Snacks")
    machine_1=sam.machines.create(location: "Don's Mixed Drinks")
    machine_2=sam.machines.create(location: "Turing Basement")
    snack_1 = machine_1.snacks.create(name:"White Castle Burger", price: 350, quantity: 4)
    snack_2 = machine_2.snacks.create(name:"Pop Rocks", price: 150, quantity: 3)

    visit snack_path(snack_1)

    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(machine_1.location)
    expect(page).to have_content(machine_2.location)
  end
end
