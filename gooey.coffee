Framer.Defaults.Animation =
  time: 1
  curve: "spring(100,10,0)"

dotStyle = {"-webkit-filter":"blur(15px)"}
containerStyle = {"-webkit-filter":"contrast(90)"}

container = new Layer
  width: 800
  height: 800
  backgroundColor: "#fff"

container.style = containerStyle
container.center()

dot1 = new Layer
  width: 100
  height: 100
  backgroundColor: "#f00f0f"
  borderRadius: "100%"
  opacity: 1

dot2 = dot1.copy()
dot1.superLayer = container
dot2.superLayer = container

dot1.style = dotStyle
dot2.style = dotStyle

dot1.center()
dot2.center()

dot1.originalFrame = dot1.frame
dot1.draggable.enabled = true

dot1.on Events.DragEnd, ->
  @animate
    properties:
      x: @originalFrame.x
      y: @originalFrame.y