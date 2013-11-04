particle1 = gets.split.map { |x| x.to_f }
particle2 = gets.split.map { |x| x.to_f }

delta_x = particle1[1] - particle2[1]
delta_y = particle1[2] - particle2[2]
distance = Math.sqrt(delta_x**2 + delta_y**2)

puts force = particle1[0] * particle1[0] / distance**2
