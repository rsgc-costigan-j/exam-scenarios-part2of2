//: [Next](@next)
//: # Scenario 3
//: ## Your goal
//: Reproduce this image:
//:
//: ![Talking Heads](TalkingHeads.png "Talking Heads")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)
canvas.drawShapesWithBorders = false

canvas.fillColor = Color(hue: 16, saturation: 83, brightness: 100, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

canvas.fillColor = Color(hue: 78, saturation: 6, brightness: 85, alpha: 100)
var points:[NSPoint] = []
points.append (NSPoint(x:400, y:600))
points.append (NSPoint(x:0, y:600))
points.append (NSPoint(x:0, y:200))
canvas.drawCustomShape(with: points)

canvas.fillColor = Color(hue: 47, saturation: 96, brightness: 99, alpha: 100)
var points2:[NSPoint] = []
points2.append (NSPoint(x:400, y:600))
points2.append (NSPoint(x:0, y:200))
points2.append (NSPoint(x:400, y:200))
canvas.drawCustomShape(with: points2)

canvas.fillColor = Color(hue: 16, saturation: 83, brightness: 100, alpha: 100)

for y in stride(from: 600, to: 200, by: -44.44){
    for x in stride(from: 0, to: 400, by: 44.44){
        var points3:[NSPoint] = []
        points3.append (NSPoint(x:x, y:y))
        points3.append (NSPoint(x:x, y:y - 44.44))
        points3.append (NSPoint(x:x + 44.44, y:y))
        canvas.drawCustomShape(with: points3)
    }
}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
