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

  #Misil-misil
  it 'el misil chocante deberia recibir 100 de danio al chocar otro misil' do

    misil_chocante = Misil.new
    misil_chocado = Misil.new
    misil_chocante.colisionar_con misil_chocado
    expect(misil_chocante.get_vida).to eq 0

  end

  it 'el misil chocado deberia recibir 100 de danio al ser chocado por otro misil' do

    misil_chocante = Misil.new
    misil_chocado = Misil.new
    misil_chocante.colisionar_con misil_chocado
    expect(misil_chocado.get_vida).to eq 0

  end

  #Misil-bomba
  it 'el misil chocante deberia recibir efecto nulo al chocar una bomba' do

    misil_chocante = Misil.new
    bomba_chocada = Bomba.new
    misil_chocante.colisionar_con bomba_chocada
    expect(misil_chocante.get_vida).to eq 100
    expect(misil_chocante.get_masa).to eq 100

  end

  it 'la bomba chocada deberia recibir un danio de 50% al ser chocada por un misil' do

    misil_chocante = Misil.new
    bomba_chocada = Bomba.new
    misil_chocante.colisionar_con bomba_chocada
    expect(bomba_chocada.get_vida).to eq 50

  end

  #Misil-asteroide
  it 'el misil chocante deberia recibir efecto nulo al chocar un asteroide' do

    misil_chocante = Misil.new
    asteroide_chocado = Asteroide.new
    misil_chocante.colisionar_con asteroide_chocado
    expect(misil_chocante.get_vida).to eq 100
    expect(misil_chocante.get_masa).to eq 100

  end

  it 'el asteroide chocado deberia recibir efecto nulo al ser chocado por un misil' do

    misil_chocante = Misil.new
    asteroide_chocado = Asteroide.new
    misil_chocante.colisionar_con asteroide_chocado
    expect(misil_chocante.get_vida).to eq 100
    expect(misil_chocante.get_masa).to eq 100

  end

  #Misil-estrella
  it 'el misil chocante deberia recibir efecto nulo al chocar una estrella' do

    misil_chocante = Misil.new
    estrella_chocada = Estrella.new
    misil_chocante.colisionar_con estrella_chocada
    expect(misil_chocante.get_vida).to eq 100
    expect(misil_chocante.get_masa).to eq 100

  end

end