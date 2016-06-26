require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/asteroide'
require_relative '../model/estrella'
require_relative '../model/colision'

describe 'Colisiones del misil' do


  #Misil-nave
  it 'el misil chocante deberia recibir 100 de danio a la vida al chocar una nave' do

    misil_chocante = Misil.new
    nave_chocada = Nave.new
    misil_chocante.colisionar_con nave_chocada
    expect(misil_chocante.get_vida).to eq 0

  end

  it 'la nave chocada deberia recibir 80 de danio a la vida al ser chocada por un misil' do

    misil_chocante = Misil.new
    nave_chocada = Nave.new
    misil_chocante.colisionar_con nave_chocada
    expect(nave_chocada.get_vida).to eq 20

  end


end