class = require '30log'
Gamestate = require 'gamestate'

local game = {}

function love.resize(w, h)
  width, height = w, h
  scale = height / 600
end

function love.load()
  love.resize(love.window.getWidth(), love.window.getHeight())
  Gamestate.registerEvents()
  Gamestate.switch(game)
end

function game:enter()
end

function game:update(dt)
end

function game:draw()
end

function game:mousepressed(x, y, button)
end

function game:keypressed(key, isrepeat)
  if key == 'escape' then
    love.event.push('quit')
  end
end
