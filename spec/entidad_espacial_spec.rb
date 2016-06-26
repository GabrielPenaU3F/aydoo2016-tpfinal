require 'rspec'
require 'spec_helper'
require_relative '../model/entidad_espacial'
require_relative '../model/colision'
require_relative '../model/objeto_muerto_exception'


describe 'EntidadEspacial' do

  it 'deberia inicializarse con 100 de vida y 100 de masa por default' do

    objeto = EntidadEspacial.new
    expect(objeto.get_vida).to eq 100
    expect(objeto.get_masa).to eq 100

  end

  it 'deberia poder setearle 300 de vida' do

    objeto = EntidadEspacial.new
    objeto.set_vida 300
    expect(objeto.get_vida).to eq 300

  end

  it 'deberia poder setearle 200 de masa' do

    objeto = EntidadEspacial.new
    objeto.set_masa 200
    expect(objeto.get_masa).to eq 200

  end

  it 'deberia estar viva apenas es creada' do

    objeto = EntidadEspacial.new
    expect(objeto.get_estado).to eq 'vivo'

  end

  it 'deberia estar viva si tiene mas de 0 de vida y masa' do

    objeto = EntidadEspacial.new
    objeto.set_vida 70
    objeto.set_masa 50
    expect(objeto.get_estado).to eq 'vivo'

  end

  it 'deberia estar muerta si tiene 0 de vida' do

    objeto = EntidadEspacial.new
    objeto.set_vida 0
    expect(objeto.get_estado).to eq 'muerto'

  end

  it 'deberia estar muerta si tiene 0 de masa' do

    objeto = EntidadEspacial.new
    objeto.set_masa 0
    expect(objeto.get_estado).to eq 'muerto'

  end

  it 'no deberia interactuar con otros objetos si esta muerta' do

    objeto = EntidadEspacial.new
    objeto.set_vida 0
    expect{objeto.colisionar_con(EntidadEspacial.new)}.to raise_exception(ObjetoMuertoException)

  end

end
