require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/asteroide'
require_relative '../model/estrella'
require_relative '../model/colision'

describe 'Colisiones de la bomba' do


  #Bomba-nave
  it 'la bomba chocante deberia recibir 100 de danio a la vida al chocar una nave' do

    bomba_chocante = Bomba.new
    nave_chocada = Nave.new
    bomba_chocante.colisionar_con nave_chocada
    expect(bomba_chocante.get_vida).to eq 0

  end

  it 'la nave chocada deberia recibir 50 de danio a la vida al ser chocada por una bomba' do

    bomba_chocante = Bomba.new
    nave_chocada = Nave.new
    bomba_chocante.colisionar_con nave_chocada
    expect(nave_chocada.get_vida).to eq 50

  end

  #Bomba-misil
  it 'la bomba chocante deberia perder el 50% de su vida al chocar un misil' do

    bomba_chocante = Bomba.new
    misil_chocado = Misil.new
    bomba_chocante.colisionar_con misil_chocado
    expect(bomba_chocante.get_vida).to eq 50

  end


end
