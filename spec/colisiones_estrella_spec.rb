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

end
