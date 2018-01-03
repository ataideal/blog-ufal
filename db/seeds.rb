# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# As duas linhas abaixo estão dando erro por
# eu ter colocado o atributo name em usuário como
# obrigatório. Eu comentei as duas linhas e aparentemente
# tudo continuou funcionando como deveria, não sei exatamente
# para o que serve, então ficará comentado.
#admin  = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << admin.email

puts "Criando usuário default [  ]"
default_user = FactoryBot.create(:user, name: "user", email: "user@user.com", password: "123123")
puts "Criando usuário default [ X ]"

puts "Criando categorias fake [  ]"
15.times do 
  FactoryBot.create(:category)
end
puts "Criando categorias fake [ X ]"


puts "Criando usuários fake [   ]"
20.times do 
  FactoryBot.create(:user)
end
puts "Criando usuários fake [ X ]"

puts "Criando publicações fake [   ]"
100.times do
  FactoryBot.create(:publication,user: User.all.sample, category: Category.all.sample, picture: File.new(Rails.root.join('vendor', 'assets', 'images', 'box', 'img-8.jpg'), 'r'))
end
puts "Criando publicações fake [ X ]"

