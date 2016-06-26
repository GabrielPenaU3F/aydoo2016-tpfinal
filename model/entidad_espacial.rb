class EntidadEspacial

  def initialize

    @vida = 100;
    @masa = 100;
    @estado = 'vivo'

  end


  def get_vida

    return @vida

  end

  def get_masa

    return @masa

  end

  def get_estado

    return @estado

  end

  def get_representacion

    return @representacion

  end


  def set_vida vida

    validar_valor_a_setear(vida)
    @vida = vida
    actualizar_estado

  end

  def set_masa masa

    validar_valor_a_setear(masa)
    @masa = masa
    actualizar_estado

  end


  def validar_valor_a_setear(valor)

    if valor < 0
      raise(ValorInvalidoException.new)
    end

  end

  def actualizar_estado

    if (@vida == 0 || @masa == 0)

      @estado = 'muerto'

    end

  end


  def colisionar_con objeto

    if @estado == 'muerto'
      raise(ObjetoMuertoException.new)
    end

    colision = Colision.new self, objeto
    actualizar_estado

  end

  def disminuir_vida unidades

    if @vida - unidades < 0
      set_vida 0
    else
      @vida -= unidades
    end

  end

  def aumentar_vida unidades

    @vida += unidades

  end

  def disminuir_masa unidades

    if @masa - unidades < 0
      set_masa 0
    else
      @masa -= unidades
    end

  end

  def aumentar_masa unidades

    @masa += unidades

  end

end