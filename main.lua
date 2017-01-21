class = require '30log'
Gamestate = require 'gamestate'

game = require 'game'

function love.resize(w, h)
  width, height = w, h
  scale = height / 600
end

function love.load()
  love.resize(love.graphics.getWidth(), love.graphics.getHeight())
  Gamestate.registerEvents()
  Gamestate.switch(game)
end
