//
//  BTNModifier.swift
//  Chat With Swiftui
//
//  Created by hosam on 2/20/21.
//

import SwiftUI

struct BTNModifier: ViewModifier {
    var isDark = true
    
    func body(content: Content) -> some View {
        content
//            .fontWeight(.bold)
            .foregroundColor(isDark ? Color("Color") : .white)
            .padding(.vertical)
            .padding(.horizontal,45)
            .background(isDark ? Color.white : Color("Color"))
            .clipShape(Capsule())
        
    }
}
