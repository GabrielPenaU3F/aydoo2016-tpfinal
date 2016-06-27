require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/asteroide'
require_relative '../model/estrella'
require_relative '../model/colision'

describe 'Colisiones del asteroide' do


  #Asteroide-nave
  it 'el asteroide deberia aumentar su masa en un 10% de la masa de la nave al chocarla' do

    asteroide_chocante = Asteroide.new
    nave_chocada = Nave.new
    asteroide_chocante.colisionar_con nave_chocada
    expect(asteroide_chocante.get_masa).to eq 110

  end

  it 'la nave deberia disminuir su masa a la mitad al ser chocada por un asteroide' do

    asteroide_chocante = Asteroide.new
    nave_chocada = Nave.new
    asteroide_chocante.colisionar_con nave_chocada
    expect(nave_chocada.get_masa).to eq 50

  end

  #Asteroide-misil
  it 'el asteroide deberia aplicarse efecto nulo al chocar un misil' do

    asteroide_chocante = Asteroide.new
    misil_chocado = Misil.new
    asteroide_chocante.colisionar_con misil_chocado
    expect(asteroide_chocante.get_vida).to eq 100
    expect(asteroide_chocante.get_masa).to eq 100

  end

  it 'el misil deberia aplicarse efecto nulo al ser chocado por un asteroide' do

    asteroide_chocante = Asteroide.new
    misil_chocado = Misil.new
    asteroide_chocante.colisionar_con misil_chocado
    expect(misil_chocado.get_vida).to eq 100
    expect(misil_chocado.get_masa).to eq 100

  end

  #Asteroide-bomba
  it 'el asteroide deberia aplicarse efecto nulo al chocar una bomba' do

    asteroide_chocante = Asteroide.new
    bomba_chocada = Bomba.new
    asteroide_chocante.colisionar_con bomba_chocada
    expect(asteroide_chocante.get_vida).to eq 100
    expect(asteroide_chocante.get_masa).to eq 100

  end

  it 'la bomba deberia perder toda su vida al ser chocada por un asteroide' do

    asteroide_chocante = Asteroide.new
    bomba_chocada = Bomba.new
    bomba_chocada.set_vida 1000000
    asteroide_chocante.colisionar_con bomba_chocada
    expect(bomba_chocada.get_vida).to eq 0

  end

  #Asteroide-asteroide
  it 'el asteroide deberia aplicarse efecto nulo al chocar otro asteroide' do

    asteroide_chocante = Asteroide.new
    asteroide_chocado = Asteroide.new
    asteroide_chocante.colisionar_con asteroide_chocado
    expect(asteroide_chocante.get_vida).to eq 100
    expect(asteroide_chocante.get_masa).to eq 100

  end

end
