require 'spec_helper'

describe Capncook do
  it 'can create a Walter White user' do
    user = Capncook.build(:user)
    expect(user.first_name).to eq("Walter")
  end

  it 'errors on unknown class' do
    expect{ Capncook.build(:nothing) }.to raise_error("'Nothing' is an unknown class.")
  end
end

class User
  attr_accessor :first_name
end
