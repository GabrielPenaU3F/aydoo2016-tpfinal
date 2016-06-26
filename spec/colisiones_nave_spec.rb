require 'rspec'
require 'spec_helper'
require_relative '../model/nave'
require_relative '../model/colision'

describe 'Colisiones de la nave' do

  it 'la nave chocante deberia recibir 100 de daño a la vida al chocar otra nave' do

    nave_chocante = Nave.new
    nave_chocada = Nave.new
    nave_chocante.colisionar_con nave_chocada
    expect(nave_chocante.get_vida).to eq 0

  end
  

end