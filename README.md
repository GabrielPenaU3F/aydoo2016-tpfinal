# aydoo2016-tpfinal

Autor: Gabriel Pena
Revisor: Julian Moreno

Notas:

-Mi solucion no modela los Efectos como objetos, ya que considero que lo importante de los efectos son los números que modifica y no su "clasificacion".
-Realizo la seleccion de efectos para cada colision utilizando metaprogramacion para evitarme recurrir a encadenamientos de if.
-Cada una de las entidades tiene el mismo set de test unitarios. Las colisiones estan testeadas aparte.
-El metodo aplicar_efecto_nulo solo esta codeado como tal por una mera cuestion de facilitar la lectura del codigo. Necesita recibir un parametro para que funcione la implementacion de la colision, pero la realidad es que no hace nada. Igual me parecio mejor codearlo asi que hacer, por ejemplo, que "baje la vida en 0".

