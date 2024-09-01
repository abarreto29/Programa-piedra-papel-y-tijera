#El usuario pasará como argumento piedra, papel o tijera, y el programa escogerá una opción al azar.
#Opciones de eleccion que tendra tanto el Jugador
opciones = ["Piedra", "Papel", "Tijeras"]

# capturamos la respuesta del usuario
inputUser = ARGV[0].capitalize()

# Hacemos que se escoja de manera random una respuesta por parte del Computador
eleccion = opciones[rand(opciones.length)]

#creo una variable para almacenas el mensaje de eleccion de la computadora
pcChoose = "La computadora elige: #{eleccion}" 

# Comprabamos que el input sea el correcto a las opciones
# si es correcto verificamos el resultado del juego

if !opciones.include?(inputUser)
  puts "Opción inválida. Las opciones válidas son: #{opciones.join(', ')}"
elsif inputUser == eleccion
  puts pcChoose
  puts "Empate."
elsif (inputUser == "Papel" && eleccion == "Piedra") ||
      (inputUser == "Piedra" && eleccion == "Tijeras") ||
      (inputUser == "Tijeras" && eleccion == "Papel")
  puts pcChoose
  puts "Ganaste."
else
  puts pcChoose
  puts "Perdiste."
end