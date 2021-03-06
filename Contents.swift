import UIKit


struct Point{
    let x:Double
    let y:Double
}

struct Line{
    let start:Point
    let end:Point

func length()->Double{
    return sqrt( pow(end.x - start.x,2.0) + pow(end.y - start.y,2.0))
    }
}

struct Triangle{
    var Points:[Point]
    
    init(Points:[Point]) {
        self.Points = Points
    }
    
    func area()->Double{
        
        var Lines :[Line] = []
        Lines.append(Line(start: Points[0], end: Points[1]))
        Lines.append(Line(start: Points[1], end: Points[2]))
        Lines.append(Line(start: Points[2], end: Points[0]))
        
        let s =  (Lines[0].length() + Lines[1].length() + Lines[2].length()) / 2
        
        return sqrt(s * (s - Lines[0].length())*(s - Lines[1].length())*(s - Lines[2].length()))
    }
}


var myTraingle = Triangle(Points: [Point(x: 0.0, y: 0.0), Point(x: 0.0, y: 1.0), Point(x: 1.0, y: 0.0)])
print(myTraingle.area())


