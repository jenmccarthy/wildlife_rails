require 'rails_helper'

describe Region do

  it { should validate_presence_of :name}
  it { should have_many :sightings }
  it { should have_many :species }

end
