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

  it 'deberia poder setearle 200 de masa' do

    nave = Nave.new
    nave.set_masa 200
    expect(nave.get_masa).to eq 200

  end

  it 'deberia estar viva apenas es creada' do

    nave = Nave.new
    expect(nave.get_estado).to eq 'vivo'

  end

  it 'deberia estar viva si tiene mas de 0 de vida y masa' do

    nave = Nave.new
    nave.set_vida 70
    nave.set_masa 50
    expect(nave.get_estado).to eq 'vivo'

  end

  it 'deberia estar muerta si tiene mas de 0 de vida' do

    nave = Nave.new
    nave.set_vida 0
    expect(nave.get_estado).to eq 'muerto'

  end

end