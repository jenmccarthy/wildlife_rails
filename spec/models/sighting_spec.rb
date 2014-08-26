require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :date }
  it { should validate_presence_of :latitude }

  it 'will ensure the correct length of latitude' do
    test_sighting = Sighting.new({:date => '2014-08-26', :latitude => 12, :longitude => 11.012345, :quantity => 1, :species_id => 2})
    expect(test_sighting.save).to eq false
  end

end
