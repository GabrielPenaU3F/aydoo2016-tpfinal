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


end
