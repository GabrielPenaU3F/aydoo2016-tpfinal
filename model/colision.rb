require_relative '../model/nave'
require_relative '../model/misil'

class Colision

  def initialize objeto_chocante, objeto_chocado

    mapear_efectos
    ejecutar_choque objeto_chocante, objeto_chocado

  end

  #Resuelvo la colision utilizando metaprogramacion
  #para cada clave de choque me guardo dos metodos y dos argumentos
  #asocio cada metodo con el objeto que lo debera ejecutar
  #y lo llamo con el parametro correspondiente

  def ejecutar_choque objeto_chocante, objeto_chocado

    clave_choque = ('@' + objeto_chocante.get_representacion + '#' + objeto_chocado.get_representacion)
    resultado = @mapa_efectos[clave_choque]
    metodo_chocante = resultado[0].bind objeto_chocante
    metodo_chocante.call resultado[1]
    metodo_chocado = resultado[2].bind objeto_chocado
    metodo_chocado.call resultado[3]

  end

  def mapear_efectos

    @mapa_efectos = Hash.new
    #El array de resultado_chocante_chocado funciona asi: [metodo del chocante, argumento, metodo del chocado, argumento]

    @mapa_efectos['@nave#nave'] = [Nave.new.method(:disminuir_vida).unbind, 100, Nave.new.method(:disminuir_vida).unbind, 100]
    @mapa_efectos['@nave#misil'] = [Nave.new.method(:disminuir_vida).unbind, 80, Misil.new.method(:disminuir_vida).unbind, 100]


  end

end