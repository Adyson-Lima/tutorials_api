puts 'gerando tutorials...'
 5.times do
   Tutorial.create(subject: ['rails', 'mainframe', 'openbsd'].sample, author: 'eu')
 end
puts 'tutorials gerados!'