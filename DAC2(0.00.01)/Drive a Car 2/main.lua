local fowardforced = 1000
local lg = love.graphics
local world = love.physics.newWorld(0,0)
local cary = love.graphics.getHeight() / 2
local carx = love.graphics.getWidth() / 2
function love.load()
    car = {}
    waypoint = {}
    introcarway = {}
    introsound = {}
    car.x = love.graphics.getWidth() / 2
    car.y = love.graphics.getHeight() / 2
    car.ax = 0
    car.yx = 0
    introcarway.x = 0
    introcarway.y = love.graphics.getHeight() / 2
    car.body = love.physics.newBody(world, car.x, car.y, "dynamic")
    waypoint.y = love.graphics.getHeight() / 2
    waypoint.x = love.graphics.getWidth() / 2
    car.direction = math.atan2((love.mouse.getY() - car.y), (love.mouse.getX() - car.x))
    slice1 = love.graphics.newImage('res/carslices/slice1.png')
    slice2 = love.graphics.newImage('res/carslices/slice2.png')
    slice3 = love.graphics.newImage('res/carslices/slice3.png')
    slice4 = love.graphics.newImage('res/carslices/slice4.png')
    slice5 = love.graphics.newImage('res/carslices/slice5.png')
    slice6 = love.graphics.newImage('res/carslices/slice6.png')

    slice1i = love.graphics.newImage('res/introcarslices/slice1.png')
    slice2i = love.graphics.newImage('res/introcarslices/slice2.png')
    slice3i = love.graphics.newImage('res/introcarslices/slice3.png')
    slice4i = love.graphics.newImage('res/introcarslices/slice4.png')
    slice5i = love.graphics.newImage('res/introcarslices/slice5.png')
    slice6i = love.graphics.newImage('res/introcarslices/slice6.png')

    copy = love.graphics.newImage('res/copyright.jpg')
    loadings = love.graphics.newImage('res/loadingscreen.png')
    introsound.music = love.audio.newSource('sounds/intro.ogg', 'static')
    introsound.music:setLooping(true)
end

function love.update(dt)
    car.direction = math.atan2((love.mouse.getY() - car.y), (love.mouse.getX() - car.x))
    if love.keyboard.isDown("w") then
    car.body:applyForce(0, -fowardforced)
    car.x,car.y = car.body:getPosition()
    end
end
function carload()
lg.draw(slice1, car.x, car.y, car.direction, 1, 1, slice1:getWidth() / 2, slice1:getHeight() / 2)
lg.draw(slice1, car.x, car.y - 2, car.direction, 1, 1, slice1:getWidth() / 2, slice1:getHeight() / 2)
lg.draw(slice2, car.x, car.y - 5, car.direction, 1, 1,  slice2:getWidth() / 2, slice2:getHeight() / 2)
lg.draw(slice2, car.x, car.y - 7, car.direction, 1, 1,  slice2:getWidth() / 2, slice2:getHeight() / 2)
lg.draw(slice3, car.x, car.y - 10, car.direction, 1, 1, slice3:getWidth() / 2, slice3:getHeight() / 2)
lg.draw(slice3, car.x, car.y - 12, car.direction, 1, 1, slice3:getWidth() / 2, slice3:getHeight() / 2)
lg.draw(slice4, car.x, car.y - 15, car.direction, 1, 1, slice4:getWidth() / 2, slice4:getHeight() / 2)
lg.draw(slice4, car.x, car.y - 17, car.direction, 1, 1, slice4:getWidth() / 2, slice4:getHeight() / 2)
lg.draw(slice5, car.x, car.y - 20, car.direction, 1, 1, slice5:getWidth() / 2, slice5:getHeight() / 2)
lg.draw(slice5, car.x, car.y - 22, car.direction, 1, 1, slice5:getWidth() / 2, slice5:getHeight() / 2)
lg.draw(slice6, car.x, car.y - 25, car.direction, 1, 1,  slice6:getWidth() / 2, slice6:getHeight() / 2)
lg.draw(slice6, car.x, car.y - 27, car.direction, 1, 1,  slice6:getWidth() / 2, slice6:getHeight() / 2)
end
function playablecarload()
    lg.draw(slice1, car.x, car.y, car.direction, 1, 1, slice1:getWidth() / 2, slice1:getHeight() / 2)
    lg.draw(slice1, car.x, car.y - 2, car.direction, 1, 1, slice1:getWidth() / 2, slice1:getHeight() / 2)
    lg.draw(slice2, car.x, car.y - 5, car.direction, 1, 1,  slice2:getWidth() / 2, slice2:getHeight() / 2)
    lg.draw(slice2, car.x, car.y - 7, car.direction, 1, 1,  slice2:getWidth() / 2, slice2:getHeight() / 2)
    lg.draw(slice3, car.x, car.y - 10, car.direction, 1, 1, slice3:getWidth() / 2, slice3:getHeight() / 2)
    lg.draw(slice3, car.x, car.y - 12, car.direction, 1, 1, slice3:getWidth() / 2, slice3:getHeight() / 2)
    lg.draw(slice4, car.x, car.y - 15, car.direction, 1, 1, slice4:getWidth() / 2, slice4:getHeight() / 2)
    lg.draw(slice4, car.x, car.y - 17, car.direction, 1, 1, slice4:getWidth() / 2, slice4:getHeight() / 2)
    lg.draw(slice5, car.x, car.y - 20, car.direction, 1, 1, slice5:getWidth() / 2, slice5:getHeight() / 2)
    lg.draw(slice5, car.x, car.y - 22, car.direction, 1, 1, slice5:getWidth() / 2, slice5:getHeight() / 2)
    lg.draw(slice6, car.x, car.y - 25, car.direction, 1, 1,  slice6:getWidth() / 2, slice6:getHeight() / 2)
    lg.draw(slice6, car.x, car.y - 27, car.direction, 1, 1,  slice6:getWidth() / 2, slice6:getHeight() / 2)
    setmetatable(car, self)
 
end

function introcarload()
    lg.draw(slice1i, waypoint.x, waypoint.y, car.direction, 1, 1, slice1i:getWidth() / 2, slice1i:getHeight() / 2)
    lg.draw(slice1i, waypoint.x, waypoint.y - 2, car.direction, 1, 1, slice1i:getWidth() / 2, slice1i:getHeight() / 2)
    lg.draw(slice2i, waypoint.x, waypoint.y - 5, car.direction, 1, 1,  slice2i:getWidth() / 2, slice2i:getHeight() / 2)
    lg.draw(slice2i, waypoint.x, waypoint.y - 7, car.direction, 1, 1,  slice2i:getWidth() / 2, slice2i:getHeight() / 2)
    lg.draw(slice3i, waypoint.x, waypoint.y - 10, car.direction, 1, 1, slice3i:getWidth() / 2, slice3i:getHeight() / 2)
    lg.draw(slice3i, waypoint.x, waypoint.y - 12, car.direction, 1, 1, slice3i:getWidth() / 2, slice3i:getHeight() / 2)
    lg.draw(slice4i, waypoint.x, waypoint.y - 15, car.direction, 1, 1, slice4i:getWidth() / 2, slice4i:getHeight() / 2)
    lg.draw(slice4i, waypoint.x, waypoint.y - 17, car.direction, 1, 1, slice4i:getWidth() / 2, slice4i:getHeight() / 2)
    lg.draw(slice5i, waypoint.x, waypoint.y - 20, car.direction, 1, 1, slice5i:getWidth() / 2, slice5i:getHeight() / 2)
    lg.draw(slice5i, waypoint.x, waypoint.y - 22, car.direction, 1, 1, slice5i:getWidth() / 2, slice5i:getHeight() / 2)
    lg.draw(slice6i, waypoint.x, waypoint.y - 25, car.direction, 1, 1,  slice6i:getWidth() / 2, slice6i:getHeight() / 2)
    lg.draw(slice6i, waypoint.x, waypoint.y - 27, car.direction, 1, 1,  slice6i:getWidth() / 2, slice6i:getHeight() / 2)
    end

function introbegin()
 
end

function loading()
love.graphics.draw(loadings, 0, 0)
love.audio.stop()
end

function love.draw()

love.graphics.draw(copy, 180, 600)
introbegin()
playablecarload()
love.graphics.print(car.x, 0, 0)
love.graphics.print(car.y, 0, 20)
end

function playintro()
love.audio.play(introsound.music)
love.audio.setVolume(1.0)
love.timer.sleep(4)
love.audio.stop()
end

