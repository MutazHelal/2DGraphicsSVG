myShapes model =
[
sky,

road,

car
|> move (3 * sin model.time, 3 * sin (10 * model.time)),

wheelGroup
|> transform
(ident
|> rotateAboutT (-33,-34) (degrees -90 - (8 * model.time)))
|> move (3 * sin model.time, 3 * sin (10 * model.time)),

wheelGroup1
|> transform
(ident
|> rotateAboutT (48,-34) (degrees -90 - (8 * model.time)))
|> move (3 * sin model.time, 3 * sin (10 * model.time))

]

car = group [ frame, window, headlight, brakelight, doors]

wheelGroup = group [wheel, hubcap]

wheelGroup1 = group [wheel1, hubcap1]

sky = rect 250 150
|> filled (black)
|> move (20,50)

road = rect 250 50
|> filled (gray)
|> move (-20,-50)

frame = group [
polygon [(0,24),(0,0),(40,0)]
|> filled (rgb 230 125 50)
|> scaleX 2,

polygon [(0,24),(0,0),(-30,0)]
|> filled (rgb 230 125 50)
|> scaleX 2,

rect 140 30
|> filled (rgb 230 125 50)
|> move (11,-15),

polygon [(0,6),(-12,0),(-12,-14),(0,-24)]
|> filled (rgb 230 125 50)
|> move (-59,-6),

polygon [(0,0),(0,21),(20,20)]
|> filled (rgb 230 125 50)
|> move (71,-19)
]

window = group [
polygon [(1,20),(1,1),(34,1)]
|> filled (blue)
|> scaleX 2,

polygon [(-1,20),(-1,1),(-26,1)]
|> filled (blue)
|> scaleX 2
]

headlight =
rect 4 13
|> filled (yellow)
|> move (-73,-13)

brakelight =
rect 5 15
|> filled (red)
|> move (83,-19)

doors = group [
rect 0.1 30
|> filled (black)
|> move (0,-15),

rect 0.1 30
|> filled (black)
|> move (71,-15),

rect 10 3
|> filled (darkOrange)
|> move (-18,-8),

rect 10 3
|> filled (darkOrange)
|> move (49,-8)
]

wheel =
circle 15
|> filled (black)
|> move (-33,-34)

hubcap =
ngon 5 10
|> filled (white)
|> move (-33,-34)

wheel1 =
circle 15
|> filled (black)
|> move (48,-34)

hubcap1 =
ngon 5 10
|> filled (white)
|> move (48,-34)
