require 'rspec'
require 'spec_helper'
require_relative '../model/misil'

describe 'Nave' do

  it 'deberia inicializarse con 100 de vida y 100 de masa por default' do

    misil = Misil.new
    expect(misil.get_vida).to eq 100
    expect(misil.get_masa).to eq 100

  end

end
