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

  it 'el misil chocado deberia recibir efecto nulo al ser chocado por una bomba' do

    bomba_chocante = Bomba.new
    misil_chocado = Misil.new
    bomba_chocante.colisionar_con misil_chocado
    expect(misil_chocado.get_vida).to eq 100
    expect(misil_chocado.get_masa).to eq 100


  end

  #Bomba-bomba
  it 'la bomba chocante deberia recibir 100 de daño a la vida al chocar otra bomba' do

    bomba_chocante = Bomba.new
    bomba_chocada = Bomba.new
    bomba_chocante.colisionar_con bomba_chocada
    expect(bomba_chocante.get_vida).to eq 0

  end

  it 'la bomba chocada deberia recibir 100 de daño a la vida al ser chocada por otra bomba' do

    bomba_chocante = Bomba.new
    bomba_chocada = Bomba.new
    bomba_chocante.colisionar_con bomba_chocada
    expect(bomba_chocada.get_vida).to eq 0

  end

  #Bomba-asteroide
  it 'la bomba chocante deberia perder toda su vida al chocar un asteroide' do

    bomba_chocante = Bomba.new
    asteroide_chocado = Asteroide.new
    bomba_chocante.set_vida 1000000
    bomba_chocante.colisionar_con asteroide_chocado
    expect(bomba_chocante.get_vida).to eq 0

  end


end
