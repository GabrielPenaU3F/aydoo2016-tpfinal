require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/nave'
require_relative '../model/colision'

describe 'Colisiones de la nave' do

  it 'la nave chocante deberia recibir 100 de daño a la vida al chocar otra nave' do

    nave_chocante = Nave.new
    nave_chocada = Nave.new
    nave_chocante.colisionar_con nave_chocada
    expect(nave_chocante.get_vida).to eq 0

  end

  it 'la nave chocada deberia recibir 100 de daño a la vida al ser chocada por otra nave' do

    nave_chocante = Nave.new
    nave_chocada = Nave.new
    nave_chocante.colisionar_con nave_chocada
    expect(nave_chocada.get_vida).to eq 0

  end

  it 'la nave chocante deberia recibir 80 de daño a la vida al chocar un misil' do

    nave_chocante = Nave.new
    misil_chocado = Misil.new
    nave_chocante.colisionar_con misil_chocado
    expect(nave_chocante.get_vida).to eq 20

  end


end