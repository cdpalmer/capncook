require 'spec_helper'

describe Capncook do
  it 'can create a Walter White user' do
    user = Capncook.build(:user)
    expect(user.first_name).to eq("Walter")
    expect(user.last_name).to eq("White")
  end

  it 'errors on unknown class' do
    expect{ Capncook.build(:nothing) }.to raise_error("'Nothing' is an unknown class.")
  end

  it 'calls #create on User class'
  it 'will not explode on unknown attributes'
  it 'pulls attributes from JSON file'
end

class User
  attr_accessor :first_name

  def create
  end
end
