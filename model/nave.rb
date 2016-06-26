class Nave



  def initialize

    @vida = 100;
    @masa = 100;
    @estado = 'vivo'
    @representacion = 'nave'

  end


  def get_vida

    return @vida

  end

  def get_masa

    return @masa

  end

  def get_estado

    actualizar_estado
    return @estado

  end

  def get_representacion

    return @representacion

  end


  def set_vida vida

    @vida = vida

  end

  def set_masa masa

    @masa = masa

  end


  def actualizar_estado

    if (@vida == 0 || @masa == 0)

      @estado = 'muerto'

    end

  end


  def colisionar_con objeto

    colision = Colision.new self, objeto

  end


  def disminuir_vida unidades

    @vida -= unidades

  end





end