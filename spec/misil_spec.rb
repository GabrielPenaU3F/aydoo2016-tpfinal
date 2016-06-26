require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/misil'
require_relative '../model/colision'
require_relative '../model/objeto_muerto_exception'

describe 'Misil' do

  it 'deberia inicializarse con 100 de vida y 100 de masa por default' do

    misil = Misil.new
    expect(misil.get_vida).to eq 100
    expect(misil.get_masa).to eq 100

  end

  it 'deberia poder setearle 300 de vida' do

    misil = Misil.new
    misil.set_vida 300
    expect(misil.get_vida).to eq 300

  end

  it 'deberia poder setearle 200 de masa' do

    misil = Misil.new
    misil.set_masa 200
    expect(misil.get_masa).to eq 200

  end

  it 'deberia estar vivo apenas es creado' do

    misil = Misil.new
    expect(misil.get_estado).to eq 'vivo'

  end

  it 'deberia estar vivo si tiene mas de 0 de vida y masa' do

    misil = Misil.new
    misil.set_vida 70
    misil.set_masa 50
    expect(misil.get_estado).to eq 'vivo'

  end

  it 'deberia estar muerta si tiene 0 de vida' do

    misil = Misil.new
    misil.set_vida 0
    expect(misil.get_estado).to eq 'muerto'

  end

  it 'deberia estar muerto si tiene 0 de masa' do

    misil = Misil.new
    misil.set_masa 0
    expect(misil.get_estado).to eq 'muerto'

  end

  it 'deberia representarse con el string misil' do

    misil = Misil.new
    expect(misil.get_representacion).to eq 'misil'

  end

  it 'no deberia interactuar con otros objetos si esta muerto' do

    misil = Misil.new
    misil.set_vida 0
    expect{misil.colisionar_con(Misil.new)}.to raise_exception(ObjetoMuertoException)

  end


end
