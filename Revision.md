Revisión del tp final de Gabriel Pena

Observación 1: El Estado de la entidad espacial solo se representa con un string, recomiendo modelarlo como un objeto el cual posee dicho string. Podés aplicar el patrón State para llevarlo a cabo.
Respuesta de Gabriel Pena: estaba seguro de que lo primero que me ibas a observar era esto, así que ya me había anticipado y expliqué el por qué de esta decisión en mi README.md. No lo tomo.

Observación 2: Actualmente se puede setear la vida y la masa como un número negativo. Recomiendo crear una excepción para este caso ya que no se debería permitir números negativos para estos atributos.
Respuesta de Gabriel Pena: lo tomo. Voy a agregar casos de tests en que una nave tenga que quedar en negativos y las condiciones que falten para que se vaya a 0, con sus correspondientes excepciones..