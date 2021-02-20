//
//  PasswordButton.swift
//  App Lock
//
//  Created by hosam on 12/23/20.
//

import SwiftUI

struct PasswordButton: View {
    
    var value : String
    @Binding var password : String
   
    @Binding var key : String
    @Binding var unlocked : Bool
    @Binding var wrongPass : Bool
    @Binding var isType : Bool
    @Binding var show : Bool
    @AppStorage("active_main") var activeMain = false
    
    var body: some View {
        Button(action: setPassword, label: {
            
            VStack{
                
                if value.count > 1{
                    
                    // Image...
                    
                    Image(systemName: "delete.left")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                else{
                    
                    Text(value)
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
            .padding()
            
        })
    }
    
    func setPassword(){
        
        // checking if backspace pressed...
        
        withAnimation{
            
            isType = false
            
            if value.count > 1{
                
                if password.count != 0{
                    
                    password.removeLast()
                }
            }
            else{
                
                if password.count != 6{
                    
                    password.append(value)
                    
                    // Delay Animation...
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                        
                        withAnimation{
                            
                            if password.count == 6{
                                
                                if password == key{
                                    show=true
                                    isType = true
                                    wrongPass = false
                                    //                                    self.activeHome()
                                    //                                    unlocked = true
                                }
                                else{
                                    show=true
                                    wrongPass = true
                                    isType = true
                                    password.removeAll()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    //    func activeHome()  {
    //        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
    //            self.activeMain=true
    //        }
    //    }
}
