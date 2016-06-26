require 'rspec'
require 'spec_helper'
require_relative '../model/misil'

describe 'Misil' do

  it 'deberia representarse con el string misil' do

    misil = Misil.new
    expect(misil.get_representacion).to eq 'misil'

  end

end
