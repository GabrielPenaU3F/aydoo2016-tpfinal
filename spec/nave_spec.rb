require 'rspec'
require 'spec_helper'
require_relative '../model/nave'

describe 'Nave' do

  it 'deberia inicializarse con 100 de vida y 100 de masa por default' do

    nave = Nave.new
    expect(nave.get_vida).to eq 100
    expect(nave.get_masa).to eq 100

  end

  it 'deberia poder setearle 300 de vida' do

    nave = Nave.new
    nave.set_vida 300
    expect(nave.get_vida).to eq 300

  end

end
