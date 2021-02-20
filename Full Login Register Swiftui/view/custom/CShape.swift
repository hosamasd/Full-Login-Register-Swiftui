//
//  CShape.swift
//  Second log signup
//
//  Created by hosam on 1/21/21.
//

import SwiftUI

// custom Shape...

struct CShape : Shape {
    
    var isForget = false
    
    
    func path(in rect: CGRect) -> Path {

        return Path{path in

            // starting from bottom...

            path.move(to: CGPoint(x: rect.width, y: rect.height - 50))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 50))

            // adding curve...

            // total raidus of curve = 80
            path.addArc(center: CGPoint(x: isForget ?  40 : rect.width - 40 , y: rect.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: false)
        }
    }
}

struct CShapes : Shape {
    
    var isForget = false
    
    
    func path(in rect: CGRect) -> Path {

        return Path{path in

            // starting from bottom...

            path.move(to: CGPoint(x: rect.width, y: rect.height - 50))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height - 50))

            // adding curve...

            // total raidus of curve = 80
            path.addArc(center: CGPoint(x: isForget ?  40 :  rect.width - 40 , y: rect.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: false)
        }
    }
}


struct Home_Prevdiews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
