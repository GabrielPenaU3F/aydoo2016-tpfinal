# aydoo2016-tpfinal

Autor: Gabriel Pena
Revisor: Julian Moreno

Notas:

-Mi solucion no modela los Efectos como objetos, ya que considero que lo importante de los efectos son los números que modifica y no su "clasificacion". Decidi no utilizar el patron State porque me parecio que complicaba la legibilidad del codigo innecesariamente, dado que en esta instancia solo son dos estados posibles.
-Realizo la seleccion de efectos para cada colision utilizando metaprogramacion para evitarme recurrir a encadenamientos de if.
-Cada una de las entidades tiene el mismo set de test unitarios. Las colisiones estan testeadas aparte.
-El metodo aplicar_efecto_nulo solo esta codeado como tal por una mera cuestion de facilitar la lectura del codigo. Necesita recibir un parametro para que funcione la implementacion de la colision, pero la realidad es que no hace nada. Igual me parecio mejor codearlo asi que hacer, por ejemplo, que "baje la vida en 0".
-En caso de requerir modificaciones, se puede hacer por extension sin violar el Open-Close Principle. Por ejemplo, si se quisiera agregar un nuevo tipo de entidad, bastaria con codearla heredando de la clase EntidadEspacial, agregarle una representacion, y luego heredar de la Colision una version nueva que redefina el metodo "obtener_metodos_y_parametros_correspondientes" agregando las entradas que correspondan a todas las interacciones posibles con la entidad nueva.

