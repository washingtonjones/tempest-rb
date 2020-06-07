module Positions
  TOP_LEFT      = { x: 193, y: 113 }
  TOP_CENTER    = { x: 320, y: 60 }
  TOP_RIGHT     = { x: 447, y: 113 }
  CENTER_LEFT   = { x: 140, y: 240 }
  CENTER_RIGHT  = { x: 500, y: 240 }
  BOTTOM_LEFT   = { x: 193, y: 367 }
  BOTTOM_CENTER = { x: 320, y: 420 }
  BOTTOM_RIGHT  = { x: 447, y: 367 }

  POSITIONS = [
    BOTTOM_CENTER,
    BOTTOM_LEFT,
    CENTER_LEFT,
    TOP_LEFT,
    TOP_CENTER,
    TOP_RIGHT,
    CENTER_RIGHT,
    BOTTOM_RIGHT
  ]

  NUMBER_OF_POSITIONS = POSITIONS.size
end