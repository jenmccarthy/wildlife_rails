require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :date }
  it { should validate_presence_of :latitude }
  it { should validate_presence_of :longitude }
  it { should validate_presence_of :species_id }
  it { should validate_presence_of :quantity }

  it 'will ensure the correct length of latitude (min)' do
    test_sighting = Sighting.new({:date => '2014-08-26', :latitude => 12, :longitude => 11.012345, :quantity => 1, :species_id => 2})
    expect(test_sighting.save).to eq false
  end

   it 'will ensure the correct length of latitude (max)' do
    test_sighting = Sighting.new({:date => '2014-08-26', :latitude => 11211.012345, :longitude => 11.012345, :quantity => 1, :species_id => 2})
    expect(test_sighting.save).to eq false
  end

  it 'will ensure the correct length of longitude (min)' do
    test_sighting = Sighting.new({:date => '2014-08-26', :latitude => 11.012345, :longitude => 11, :quantity => 1, :species_id => 2})
    expect(test_sighting.save).to eq false
  end

   it 'will ensure the correct length of longitude (max)' do
    test_sighting = Sighting.new({:date => '2014-08-26', :latitude => 11.012345, :longitude => 11211.012345, :quantity => 1, :species_id => 2})
    expect(test_sighting.save).to eq false
  end

  it 'will only accept float type numbers for latitude' do
    test_sighting = Sighting.new({:date => '2014-08-26', :latitude => "11", :longitude => 11.012345, :quantity => 1, :species_id => 2})
    expect(test_sighting.save).to eq false
  end

  it 'will only accept float type numbers for latitude' do
    test_sighting = Sighting.new({:date => '2014-08-26', :latitude => 11.012345, :longitude => 11.012345, :quantity => 1, :species_id => 2})
    expect(test_sighting.save).to eq true
  end

end
