//
//  PasswordView.swift
//  App Lock
//
//  Created by hosam on 12/23/20.
//

import SwiftUI

struct PasswordView: View {
    var index : Int
    @Binding var password : String
    
    var body: some View{
        
        ZStack{
            
            Circle()
                .stroke(Color.black,lineWidth: 2)
                .frame(width: 30, height: 30)
            
            // checking whether it is typed...
            
            if password.count > index{
                
                Circle()
                    .fill(Color.black)
                    .frame(width: 30, height: 30)
            }
        }
    }
}
