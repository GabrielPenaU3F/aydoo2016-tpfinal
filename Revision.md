Revisión del tp final de Gabriel Pena

Observación 1: El Estado de la entidad espacial solo se representa con un string, recomiendo modelarlo como un objeto el cual posee dicho string. Podés aplicar el patrón State para llevarlo a cabo.

Respuesta de Gabriel Pena: estaba seguro de que lo primero que me ibas a observar era esto, así que ya me había anticipado y expliqué el por qué de esta decisión en mi README.md. No lo tomo.

Observación 2: Actualmente se puede setear la vida y la masa como un número negativo. Recomiendo crear una excepción para este caso ya que no se debería permitir números negativos para estos atributos.

Respuesta de Gabriel Pena: lo tomo. Voy a agregar casos de tests en que una nave tenga que quedar en negativos y las condiciones que falten para que se vaya a 0, con sus correspondientes excepciones..

Observación 3: Recomiendo cambiar el nombre del metodo obtener_metodos_y_parametros_correspondientes de la clase colision, ya que la ‘y’ señala que el metodo hace mas de una cosa y no es claro. 

Respuesta de Gabriel Pena: esto ya lo había pensado, de hecho el metodo original se llamaba de forma distinta, y lo cambie justamente porque este nombre me parecia mas acorde que el anterior (era algo menos concreto, como obtener_reusltado o algo asi). Si se te ocurre un nombre mejor sugerimelo porque yo no encuentro uno.

Observación 4: Recomiendo dividir el metodo obtener_metodos_y_parametros_correspondientes ya que posee demasiadas lineas y dificulta la lectura. Lo que haria es un metodo privado por cada objeto espacial en el cual se agregue las combinaciones para ese objeto espacial.

Respuesta de Gabriel Pena: voy a tomarlo y a dividir el método como sugeris, son un par de refactors. Pero ojo porque le estas pifiando groso con algo: si los métodos que refactorice los pongo privados, luego si quisiera agregar objetos nuevos no podria redefinirlos y tendría que violar el Open Close Principle. 

Observacion 5: En el metodo obtener_metodos_y_parametros_correspondientes, no hace falta asignar resultado = @mapa_efectos[clave_choque] solamente para hacer return resultado. Se podria hacer nada mas que return @mapa_efectos[clave_choque], o mejor aun, sin el return, ya que ruby retorna la ultima variable del metodo.

Respuesta de Gabriel Pena: si, puede ser, fue un detalle y lo hice porque me era mas claro verlo asi. Pero lo cambio, total es una linea no hace diferencia.