require 'rspec'
require 'spec_helper'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'deberia representarse con el string asteroide' do

    asteroide = Asteroide.new
    expect(asteroide.get_representacion).to eq 'asteroide'

  end

end