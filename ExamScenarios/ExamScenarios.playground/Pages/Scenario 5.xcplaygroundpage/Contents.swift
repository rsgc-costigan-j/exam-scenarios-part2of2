//: [Previous](@previous)
//: # Scenario 5
//: ## Your goal
//: Reproduce this image:
//:
//: ![Velvet Underground](VelvetUnderground.png "Velvet Underground")
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

// Your code below...
canvas.fillColor = Color.black
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)
canvas.defaultLineWidth = 15
var z = 1
for y in stride(from: 0, through: 400, by: 67){
    for x in stride(from: 0, through: 400, by: 67){
        
        if z == 1 || z == 8 || z == 15 || z == 22 || z == 29 || z == 36{
            canvas.lineColor = Color.white
            
        } else { canvas.lineColor = Color(hue: 290, saturation: 100, brightness: 100, alpha: 100)
        }
        
        canvas.drawLine(fromX: x + 20, fromY: y + 20, toX: x + 45, toY: y + 45)
        canvas.drawLine(fromX: x + 10, fromY: y + 10, toX: x + 10, toY: y + 35)
        canvas.drawLine(fromX: x + 10, fromY: y + 10, toX: x + 35, toY: y + 10)
        z += 1
        
    }
}
canvas.defaultLineWidth = 2
canvas.lineColor = Color.white
canvas.drawLine(fromX: 0, fromY: 450, toX: 600, toY: 450)
canvas.textColor = Color.white
canvas.drawText(message: "the velvet underground", size: 30, x: 0, y: 400)

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
