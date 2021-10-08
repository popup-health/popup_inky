// ---- Robot estresado ----
// Converted from original inklewriter URL:
// https://www.inklewriter.com/stories/85233
# title: Robot estresado
# author: Pablo E. Paredes
// -----------------------------


-> pregunta_inicial


==== pregunta_inicial ====
hola amigo estas estresado?
  + No
        -> queMaravillaQueT 
  + Si
        -> seccion_yo_tambien 
  + Que pregunta es esa?
        -> uyDisculpa 

= queMaravillaQueT
que maravilla, que te vaya bien
    -> END

= uyDisculpa
uy disculpa
    -> seccion_yo_tambien.quieresQueTeAyud

==== seccion_yo_tambien ====
uy, yo tambien!!
    -> quieresQueTeAyud

= quieresQueTeAyud
quieres que te ayude?
  + seguro
      TODO: This choice is a loose end.
  + nope
      TODO: This choice is a loose end.