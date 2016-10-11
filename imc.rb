#!/bin/ruby

def resultado_imc(calculado)
imc = calculado.round(2) 
  if imc <= 16
    puts "Seu IMC: #{imc}, Magreza grave."
  elsif imc <= 17
    puts "Seu IMC #{imc}, Magreza moderada."
  elsif imc <= 18.5
    puts "Seu IMC #{imc}, Magreza leve."
  elsif imc <= 25
    puts "Seu IMC #{imc}, Saudavel."
  elsif imc <=30
      puts "Seu IMC #{imc}, Sobrepeso"
  elsif imc <= 35
    puts "Seu IMC #{imc}, Obesidade Grau I"
  elsif imc <= 40
    puts "Seu IMC #{imc}, Obesidade Grau II"
  elsif imc > 40
    puts "Seu IMC #{imc}, Obesidade Grau III (móbida)"
  end
end

def calcula_imc(peso, altura)
    return peso/(altura*altura)
end



puts "Entre com seu peso: "
peso = Float(gets.chomp)

puts "Entre com sua altura:"
altura = Float(gets.chomp)

result= resultado_imc(calcula_imc(peso, altura))


puts result
