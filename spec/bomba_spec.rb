require 'rspec'
require 'spec_helper'
require_relative '../model/bomba'

describe 'Bomba' do

  it 'deberia representarse con el string bomba' do

    bomba = Bomba.new
    expect(bomba.get_representacion).to eq 'bomba'

  end

end