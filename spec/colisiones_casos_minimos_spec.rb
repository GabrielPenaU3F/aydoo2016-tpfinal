require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/nave'
require_relative '../model/misil'
require_relative '../model/bomba'
require_relative '../model/asteroide'
require_relative '../model/estrella'
require_relative '../model/colision'

describe 'Casos minimos de colisiones enviados por el profesor' do

  #Solo para estos casos estoy usando cuatro expects por spec, ya que cada spec representa
  #uno de los casos de prueba enviados por el profesor

  #Caso minimo: nave vs asteroide
  it 'deberia resolver correctamente nave 100-100 vs asteroide 50-100' do

    nave_chocante = Nave.new
    asteroide_chocado = Asteroide.new
    asteroide_chocado.set_vida 50
    nave_chocante.colisionar_con asteroide_chocado
    expect(nave_chocante.get_vida).to eq 100
    expect(nave_chocante.get_masa).to eq 50
    expect(asteroide_chocado.get_vida).to eq 50
    expect(asteroide_chocado.get_masa).to eq 110

  end

end
