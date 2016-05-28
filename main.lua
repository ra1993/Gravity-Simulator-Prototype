-- Final Project: Gravity Simulator Prototype


-- Final Project
local physics = require("physics")
physics.start()

local Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune  -- variables for planets

-- Home Page
local w = display.contentWidth
local h = display.contentHeight

local space= display.newImage( "home.jpg" )
    space.x = w/2
    space.y = h/2
    space:scale(1, 1.5)


local title = display.newText ("Gravity Simulator", w/2, h/2-450, NewTimesRoman, 80)
title: setFillColor(1, .5, .5)

----------------------------------------------------------------------------------------------------Planets images----------------------------





-- Mercury
   local Mercurytext = display.newText ("Mercury", w/2 - 120, h/2 - 200 , Arial, 40)
   local Mercurypic = display.newImage("Mercurypic.png")
   Mercurypic.x = w/2-250
   Mercurypic.y = h/2 - 200
Mercurypic:scale(.5, .5)



-- Earth
local Earthtext = display.newText ("Earth", w/2 -150 , h/2 + 50, Arial, 40)
local Earthpic = display.newImage("Earthpic.png")
Earthpic.x = w/2-250
Earthpic.y = h/2 +35
Earthpic:scale(.5, .5)


--Mars

local Marstext = display.newText ("Mars", w/2 -150 , h/2 + 250, Arial, 40)
local Marspic = display.newImage("Marspic.png")
Marspic.x = w/2-250
Marspic.y = h/2 +250
Marspic:scale(.5, .5)

-- Venus


local Venustext = display.newText ("Venus", w/2 -150 , h/2 + 450, Arial, 40)
local Venuspic = display.newImage("Venuspic.png")
Venuspic.x = w/2-250
Venuspic.y = h/2 +450
Venuspic:scale(.5, .5)


-- Jupiter

local Jupitertext = display.newText ("Jupiter", w/2 +120 , h/2 + 450, Arial, 40)
local Jupiterpic = display.newImage("Jupiterpic.png")
Jupiterpic.x = w/2 + 250
Jupiterpic.y = h/2 +450
Jupiterpic:scale(.5, .5)


-- Neptune

local Neptunetext = display.newText ("Neptune", w/2 +120 , h/2 + 250, Arial, 40)
local Neptunepic = display.newImage("Neptunepic.png")
Neptunepic.x = w/2 + 250
Neptunepic.y = h/2 +250
Neptunepic:scale(.5, .5)


-- Saturn

local Saturntext = display.newText ("Saturn", w/2 +120 , h/2 + 50, Arial, 40)
local Saturnpic = display.newImage("Saturnpic.png")
Saturnpic.x = w/2 + 250
Saturnpic.y = h/2 +50
Saturnpic:scale(1.1, 1.1)


-- Uranus

local Uranustext = display.newText ("Uranus", w/2 +130 , h/2 - 195, Arial, 40)
local Uranuspic = display.newImage("Uranuspic.png")
Uranuspic.x = w/2 + 250
Uranuspic.y = h/2 -195
Uranuspic:scale(.8, .8)



-- -------------------------------------------------------------------------------------------------------------------------------Space



















-- -----------------------------------------------------------------------------------------------------------------------------Mercury Click
function mercclick(event)
	transition.to(Mercurytext, {x = 550, y = 350})
   transition.to(Mercurypic, {x = 350, y = 545, xScale = 2, yScale = 2})
   
local mercuryInfo = display.newText("Mercury's Gravity: 3.7m/s² ", w/2, h/2, Arial, 50)


   -- transition other planets to move off screen and put the clicked planet in the middle

transition.to(Earthtext, {x = -350})     -- moves Earth off screen
   transition.to(Earthpic, {x = -350})

transition.to(Marstext, {x = -90})     -- moves Mars off screen
   transition.to(Marspic, {x = -90})


transition.to(Venustext, {y = 1500})     -- moves Venus off screen
   transition.to(Venuspic, {y = 1500})

   transition.to(Jupitertext, {y = 1500})     -- moves Jupiter off screen
   transition.to(Jupiterpic, {y = 1500})

transition.to(Neptunetext, {x = 1200})     -- moves Neptune off screen
   transition.to(Neptunepic, {x = 1200})


transition.to(Saturntext, {x = 1500})     -- moves Saturn off screen
   transition.to(Saturnpic, {x = 1500})


transition.to(Uranustext, {x = 1500})     -- moves Uranus off screen
   transition.to(Uranuspic, {x = 1500})

physics.setGravity(0, 3.7)  -- applying gravity on object
local crate = display.newRect(100, 50, 40, 40)
crate:setFillColor(1, .5, 0)
crate.x = math.random(500)
crate.y = 0
crate.rotation = 5

physics.addBody (crate, {density = 3.0, friction = .5, bounce = .3})

end


Mercurypic:addEventListener("tap", mercclick)

-- ------------------------------------------------------------------------------------------------------------------------------- Earth Click


function earthclick(event)
	transition.to(Earthtext, {x = 550, y = 350})
   transition.to(Earthpic, {x = 350, y = 545, xScale = 2, yScale = 2})
   

   local earthInfo = display.newText("Earth's Gravity: 9.81m/s² ", w/2, h/2, Arial, 50)
   -- transition other planets to move off screen and put the clicked planet in the middle

transition.to(Mercurytext, {x = -250})      -- moves mercury off screen
   transition.to(Mercurypic, {x = -250})

transition.to(Marstext, {x = -90})     -- moves Mars off screen
   transition.to(Marspic, {x = -90})

transition.to(Venustext, {y = 1500})     -- moves Venus off screen
   transition.to(Venuspic, {y = 1500})


transition.to(Jupitertext, {y = 1500})     -- moves Jupiter off screen
   transition.to(Jupiterpic, {y = 1500})

transition.to(Neptunetext, {x = 1200})     -- moves Neptune off screen
   transition.to(Neptunepic, {x = 1200})

   transition.to(Saturntext, {x = 1500})     -- moves Saturn off screen
   transition.to(Saturnpic, {x = 1500})

   transition.to(Uranustext, {x = 1500})     -- moves Uranus off screen
   transition.to(Uranuspic, {x = 1500})


physics.setGravity(0, 9.81) -- applying gravity on object
local crate = display.newRect(100, 50, 40, 40)
crate:setFillColor(0, 0, 1)
crate.x = math.random(500)
crate.y = 0
crate.rotation = 5

physics.addBody (crate, {density = 3.0, friction = .5, bounce = .3})

end

Earthpic:addEventListener ("tap", earthclick)






-- --------------------------------------------------------------------------------------------------------------------------Mars Click

function marsclick(event)
	transition.to(Marstext, {x = 550, y = 350})
   transition.to(Marspic, {x = 350, y = 545, xScale = 2, yScale = 2})

  
local marsInfo = display.newText("Mars' Gravity: 3.711m/s² ", w/2, h/2, Arial, 50)


   -- transition other planets to move off screen and put the clicked planet in the middle

transition.to(Mercurytext, {x = -250})      -- moves mercury off screen
   transition.to(Mercurypic, {x = -250})

transition.to(Earthtext, {x = -350})     -- moves Earth off screen
   transition.to(Earthpic, {x = -350})

transition.to(Venustext, {y = 1500})     -- moves Venus off screen
   transition.to(Venuspic, {y = 1500})

transition.to(Jupitertext, {y = 1500})     -- moves Jupiter off screen
   transition.to(Jupiterpic, {y = 1500})


transition.to(Neptunetext, {x = 1200})     -- moves Neptune off screen
   transition.to(Neptunepic, {x = 1200})

   transition.to(Saturntext, {x = 1500})     -- moves Saturn off screen
   transition.to(Saturnpic, {x = 1500})


transition.to(Uranustext, {x = 1500})     -- moves Uranus off screen
   transition.to(Uranuspic, {x = 1500})


physics.setGravity(0, 3.711) -- applying gravity on object
local crate = display.newRect(100, 50, 40, 40)
crate:setFillColor(1, 2, 0)
crate.x = math.random(500)
crate.y =0
crate.rotation = 5

physics.addBody (crate, {density = 0, friction = .5, bounce = .3})

end


Marspic:addEventListener ("tap", marsclick)

-- ---------------------------------------------------------------------------------------------Venus Click

function venusclick(event)
	transition.to(Venustext, {x = 550, y = 350})
   transition.to(Venuspic, {x = 350, y = 545, xScale = 2, yScale = 2})

  
local venusInfo = display.newText("Venus' Gravity: 8.87m/s² ", w/2, h/2, Arial, 50)


   -- transition other planets to move off screen and put the clicked planet in the middle

transition.to(Mercurytext, {x = -250})      -- moves mercury off screen
   transition.to(Mercurypic, {x = -250})

transition.to(Earthtext, {x = -350})     -- moves Earth off screen
   transition.to(Earthpic, {x = -350})

transition.to(Marstext, {x = -90})     -- moves Mars off screen
   transition.to(Marspic, {x = -90})

transition.to(Jupitertext, {y = 1500})     -- moves Jupiter off screen
   transition.to(Jupiterpic, {y = 1500})

transition.to(Neptunetext, {x = 1200})     -- moves Neptune off screen
   transition.to(Neptunepic, {x = 1200})

transition.to(Saturntext, {x = 1500})     -- moves Saturn off screen
   transition.to(Saturnpic, {x = 1500})


transition.to(Uranustext, {x = 1500})     -- moves Uranus off screen
   transition.to(Uranuspic, {x = 1500})

physics.setGravity(0, 8.87) -- applying gravity on object
local crate = display.newRect(100, 50, 40, 40)
crate:setFillColor(1, 0, 0)
crate.x = math.random(500)
crate.y =0
crate.rotation = 5

physics.addBody (crate, {density = 0, friction = .5, bounce = .3})

end


Venuspic:addEventListener ("tap", venusclick)



-- ---------------------------------------------------------------------------Juptier Click

function jupiterclick(event)
	transition.to(Jupitertext, {x = 550, y = 340})
   transition.to(Jupiterpic, {x = 350, y = 545, xScale = 2, yScale = 2})

  
local JupiterInfo = display.newText("Jupiter's Gravity: 24.79m/s² ", w/2, h/2 + 20, Arial, 50)


   -- transition other planets to move off screen and put the clicked planet in the middle

transition.to(Mercurytext, {x = -250})      -- moves mercury off screen
   transition.to(Mercurypic, {x = -250})

transition.to(Earthtext, {x = -350})     -- moves Earth off screen
   transition.to(Earthpic, {x = -350})

transition.to(Marstext, {x = -90})     -- moves Mars off screen
   transition.to(Marspic, {x = -90})

   transition.to(Venustext, {y = 1500})     -- moves Venus off screen
   transition.to(Venuspic, {y = 1500})

transition.to(Neptunetext, {x = 1200})     -- moves Neptune off screen
   transition.to(Neptunepic, {x = 1200})

transition.to(Saturntext, {x = 1500})     -- moves Saturn off screen
   transition.to(Saturnpic, {x = 1500})

   transition.to(Uranustext, {x = 1500})     -- moves Uranus off screen
   transition.to(Uranuspic, {x = 1500})


physics.setGravity(0, 8.87) -- applying gravity on object
local crate = display.newRect(100, 50, 40, 40)
crate:setFillColor(0, 1, 0)
crate.x = math.random(500)
crate.y =0
crate.rotation = 5

physics.addBody (crate, {density = 0, friction = .5, bounce = .3})

end


Jupiterpic:addEventListener ("tap", jupiterclick)


-- -----------------------------------------------------------------------------Neptune

function neptuneclick(event)
	transition.to(Neptunetext, {x = 550, y = 340})
   transition.to(Neptunepic, {x = 350, y = 545, xScale = 2, yScale = 2})

  
local NeptuneInfo = display.newText("Neptune's Gravity: 11.15m/s² ", w/2, h/2 + 20, Arial, 50)


   -- transition other planets to move off screen and put the clicked planet in the middle

transition.to(Mercurytext, {x = -250})      -- moves mercury off screen
   transition.to(Mercurypic, {x = -250})

transition.to(Earthtext, {x = -350})     -- moves Earth off screen
   transition.to(Earthpic, {x = -350})

transition.to(Marstext, {x = -90})     -- moves Mars off screen
   transition.to(Marspic, {x = -90})

   transition.to(Venustext, {y = 1500})     -- moves Venus off screen
   transition.to(Venuspic, {y = 1500})

transition.to(Jupitertext, {y = 1500})     -- moves Jupiter off screen
   transition.to(Jupiterpic, {y = 1500})


transition.to(Saturntext, {x = 1500})     -- moves Saturn off screen
   transition.to(Saturnpic, {x = 1500})

   transition.to(Uranustext, {x = 1500})     -- moves Uranus off screen
   transition.to(Uranuspic, {x = 1500})

physics.setGravity(0, 11.15) -- applying gravity on object
local crate = display.newRect(100, 50, 40, 40)
crate:setFillColor(.5, 0, .5)
crate.x = math.random(500)
crate.y =0
crate.rotation = 5

physics.addBody (crate, {density = 0, friction = .5, bounce = .3})

end


Neptunepic:addEventListener ("tap", neptuneclick)



-- ------------------------------------------------------------------------------Saturn Click


function saturnclick(event)
	transition.to(Saturntext, {x = 550, y = 350})
   transition.to(Saturnpic, {x = 350, y = 545, xScale = 2, yScale = 2})

  
local SaturnInfo = display.newText("Saturn's Gravity: 10.44m/s² ", w/2, h/2, Arial, 50)


   -- transition other planets to move off screen and put the clicked planet in the middle

transition.to(Mercurytext, {x = -250})      -- moves mercury off screen
   transition.to(Mercurypic, {x = -250})

transition.to(Earthtext, {x = -350})     -- moves Earth off screen
   transition.to(Earthpic, {x = -350})

transition.to(Marstext, {x = -90})     -- moves Mars off screen
   transition.to(Marspic, {x = -90})

transition.to(Jupitertext, {y = 1500})     -- moves Jupiter off screen
   transition.to(Jupiterpic, {y = 1500})

transition.to(Neptunetext, {x = 1200})     -- moves Neptune off screen
   transition.to(Neptunepic, {x = 1200})

 transition.to(Venustext, {y = 1500})     -- moves Venus off screen
   transition.to(Venuspic, {y = 1500})

transition.to(Uranustext, {x = 1500})     -- moves Uranus off screen
   transition.to(Uranuspic, {x = 1500})

physics.setGravity(0, 10.44) -- applying gravity on object
local crate = display.newRect(100, 50, 40, 40)
crate:setFillColor(1, .7, .7)
crate.x = math.random(500)
crate.y =0
crate.rotation = 5

physics.addBody (crate, {density = 0, friction = .5, bounce = .3})

end


Saturnpic:addEventListener ("tap", saturnclick)

-- ----------------------------------------------------------------------------------------------------Uranus

function uranusclick(event)
	transition.to(Uranustext, {x = 550, y = 350})
   transition.to(Uranuspic, {x = 350, y = 545, xScale = 2, yScale = 2})

  
local UranusInfo = display.newText("Uranus' Gravity: 8.69m/s² ", w/2, h/2, Arial, 50)


   -- transition other planets to move off screen and put the clicked planet in the middle

transition.to(Mercurytext, {x = -250})      -- moves mercury off screen
   transition.to(Mercurypic, {x = -250})

transition.to(Earthtext, {x = -350})     -- moves Earth off screen
   transition.to(Earthpic, {x = -350})

transition.to(Marstext, {x = -90})     -- moves Mars off screen
   transition.to(Marspic, {x = -90})

transition.to(Jupitertext, {y = 1500})     -- moves Jupiter off screen
   transition.to(Jupiterpic, {y = 1500})

transition.to(Neptunetext, {x = 1200})     -- moves Neptune off screen
   transition.to(Neptunepic, {x = 1200})

 transition.to(Venustext, {y = 1500})     -- moves Venus off screen
   transition.to(Venuspic, {y = 1500})

   transition.to(Saturntext, {x = 1500})     -- moves Saturn off screen
   transition.to(Saturnpic, {x = 1500})



physics.setGravity(0, 8.69) -- applying gravity on object
local crate = display.newRect(100, 50, 40, 40)
crate:setFillColor(.2, .4, .5)
crate.x = math.random(500)
crate.y =0
crate.rotation = 5

physics.addBody (crate, {density = 0, friction = .5, bounce = .3})

end


Uranuspic:addEventListener ("tap", uranusclick)