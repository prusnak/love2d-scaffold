local game = {}

function game:enter()
  print('game:enter')
end

function game:update(dt)
  print('game:update', dt)
end

function game:draw()
  print('game:draw')
end

function game:mousepressed(x, y, button, istouch)
  print('game:mousepressed', x, y, button, istouch)
end

function game:keypressed(key, scancode, isrepeat)
  print('game:keypressed', key, scancode, isrepeat)
  if key == 'escape' then
    love.event.push('quit')
  end
end

return game
