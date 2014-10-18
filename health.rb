require './lib/00_requires'

Dir.glob('./models/*.rb') do |model|
  require model
end

Dir.glob('./lib/**/*.rb') do |file|
  require file
end
