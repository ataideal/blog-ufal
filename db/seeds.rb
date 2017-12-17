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

user = FactoryBot.create(:user)
category = FactoryBot.create(:category)

100.times do
  FactoryBot.create(:publication,user: user,category: category)
end

