require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/colision'

describe 'Colisiones de la nave' do


  #Nave-nave
  it 'la nave chocante deberia recibir 100 de danio a la vida al chocar otra nave' do

    nave_chocante = Nave.new
    nave_chocada = Nave.new
    nave_chocante.colisionar_con nave_chocada
    expect(nave_chocante.get_vida).to eq 0

  end

  it 'la nave chocada deberia recibir 100 de danio a la vida al ser chocada por otra nave' do

    nave_chocante = Nave.new
    nave_chocada = Nave.new
    nave_chocante.colisionar_con nave_chocada
    expect(nave_chocada.get_vida).to eq 0

  end

  #Nave-misil
  it 'la nave chocante deberia recibir 80 de danio a la vida al chocar un misil' do

    nave_chocante = Nave.new
    misil_chocado = Misil.new
    nave_chocante.colisionar_con misil_chocado
    expect(nave_chocante.get_vida).to eq 20

  end

  it 'el misil chocado deberia recibir 100 de danio a la vida al ser chocado por una nave' do

    nave_chocante = Nave.new
    misil_chocado = Misil.new
    nave_chocante.colisionar_con misil_chocado
    expect(misil_chocado.get_vida).to eq 0

  end

  #Nave-bomba
  it 'la nave chocante deberia recibir 50 de danio a la vida al chocar una bomba' do

    nave_chocante = Nave.new
    bomba_chocada = Bomba.new
    nave_chocante.colisionar_con bomba_chocada
    expect(nave_chocante.get_vida).to eq 50

  end

  it 'la bomba chocada deberia recibir 100 de danio a la vida al ser chocada por una nave' do

    nave_chocante = Nave.new
    bomba_chocada = Bomba.new
    nave_chocante.colisionar_con bomba_chocada
    expect(bomba_chocada.get_vida).to eq 0

  end



end