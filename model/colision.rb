require_relative '../model/entidad_espacial'

class Colision

  def initialize objeto_chocante, objeto_chocado

    ejecutar_choque objeto_chocante, objeto_chocado

  end

  #Resuelvo la colision utilizando metaprogramacion
  #para cada clave de choque me guardo dos metodos y dos argumentos
  #asocio cada metodo con el objeto que lo debera ejecutar
  #y lo llamo con el parametro correspondiente

  def ejecutar_choque objeto_chocante, objeto_chocado

    clave_choque = ('@' + objeto_chocante.get_representacion + '#' + objeto_chocado.get_representacion)
    resultado = obtener_metodos_y_parametros_correspondientes(clave_choque, objeto_chocante, objeto_chocado)
    metodo_chocante = resultado[0].bind objeto_chocante
    metodo_chocante.call resultado[1]
    metodo_chocado = resultado[2].bind objeto_chocado
    metodo_chocado.call resultado[3]

  end

  def obtener_metodos_y_parametros_correspondientes(clave_choque, objeto_chocante, objeto_chocado)

    @mapa_efectos = Hash.new

    #El array de resultado_chocante_chocado funciona asi: [metodo a ejecutar del chocante, argumento, metodo a ejecutar del chocado, argumento]

    @mapa_efectos['@nave#nave'] = [Nave.new.method(:disminuir_vida).unbind, 100, Nave.new.method(:disminuir_vida).unbind, 100]
    @mapa_efectos['@nave#misil'] = [Nave.new.method(:disminuir_vida).unbind, 80, Misil.new.method(:disminuir_vida).unbind, 100]
    @mapa_efectos['@nave#bomba'] = [Nave.new.method(:disminuir_vida).unbind, 50, Bomba.new.method(:disminuir_vida).unbind, 100]
    @mapa_efectos['@nave#asteroide'] = [Nave.new.method(:disminuir_masa).unbind, objeto_chocado.get_masa/2, Asteroide.new.method(:aumentar_masa).unbind, objeto_chocante.get_masa/10]
    @mapa_efectos['@nave#estrella'] = [Nave.new.method(:aumentar_vida).unbind, objeto_chocado.get_vida, Estrella.new.method(:disminuir_vida).unbind, objeto_chocado.get_vida]

    @mapa_efectos['@misil#nave'] = [Misil.new.method(:disminuir_vida).unbind, 100, Nave.new.method(:disminuir_vida).unbind, 80]
    @mapa_efectos['@misil#misil'] = [Misil.new.method(:disminuir_vida).unbind, 100, Misil.new.method(:disminuir_vida).unbind, 100]
    @mapa_efectos['@misil#bomba'] = [Misil.new.method(:aplicar_efecto_nulo).unbind, 0, Bomba.new.method(:disminuir_vida).unbind, objeto_chocado.get_vida/2]


    resultado = @mapa_efectos[clave_choque]

    return resultado

  end


end