def game
    puts "Bienvenido al juego, por favor ingresa tu nombre:"
    name = gets.chomp
    puts "Hola #{name}, ¡preparate para jugar!"
    number = rand(1..100)
    puts 'Objetivo: Trata de adivinar un numero aleatorio, Ingrese un numero entre el 1-100 '

    intentos = 0

    for i in 10.downto(1)
      oportunidades = i - 1
      ingresar = gets.chomp.to_i
      intentos += 1
      if ingresar == number
        puts "Buen trabajo, #{name}! ¡Adivinaste mi número en #{intentos} intentos!"
        break
      elsif ingresar < number
        puts "Vaya. Tu suposición fue BAJA"
        else
          puts "Vaya. Tu suposición fue ALTA"
        end
      puts "Te restan #{oportunidades} intentos"
      if oportunidades == 0
        puts "#{name}. Lo siento pero no has podido adivinar el #{number} ."
      end

    end



end

  game
