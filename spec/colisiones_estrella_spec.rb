require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/asteroide'
require_relative '../model/estrella'
require_relative '../model/colision'

describe 'Colisiones de la estrella' do


  #Estrella-nave
  it 'la estrella deberia perder toda su vida al chocar una nave' do

    estrella_chocante = Estrella.new
    nave_chocada = Nave.new
    estrella_chocante.colisionar_con nave_chocada
    expect(estrella_chocante.get_vida).to eq 0

  end

  it 'la nave chocada deberia curarse una cantidad igual a la vida de la estrella' do

    estrella_chocante = Estrella.new
    nave_chocada = Nave.new
    estrella_chocante.colisionar_con nave_chocada
    expect(nave_chocada.get_vida).to eq 200

  end

  #Estrella-misil
  it 'la estrella deberia recibir efecto nulo al chocar un misil' do

    estrella_chocante = Estrella.new
    misil_chocado = Misil.new
    estrella_chocante.colisionar_con misil_chocado
    expect(estrella_chocante.get_vida).to eq 100
    expect(estrella_chocante.get_masa).to eq 100

  end

  it 'el misil deberia recibir efecto nulo al ser chocado por una estrella' do

    estrella_chocante = Estrella.new
    misil_chocado = Misil.new
    estrella_chocante.colisionar_con misil_chocado
    expect(misil_chocado.get_vida).to eq 100
    expect(misil_chocado.get_masa).to eq 100

  end

end
