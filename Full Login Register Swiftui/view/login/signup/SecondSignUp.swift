//
//  SecondSignUp.swift
//  Chat With Swiftui
//
//  Created by hosam on 2/17/21.
//

import SwiftUI

struct SecondSignUp: View {
    
    @EnvironmentObject var vm: ModelData
    @State var hide = false
    @State var secondHide = false
    
    var body: some View {
        
//        ScrollView(height < 750 ? .vertical : .init()) {
            VStack(alignment: .leading, spacing: 25) {
            
            Text("Sign Up")
                .font(.system(size: 35, weight: .bold))
                .foregroundColor(Color("Color"))
//                .padding(.top)
            
                
                ScrollView(height < 750 ? .vertical : .init()) {
                
//                VStack(alignment: .leading, spacing: 25) {
                    
                    HStack {
                        Text("Email")
                    .foregroundColor(Color("Color"))
                            .padding(.top,10)
                        Spacer()
                    }
            
            VStack{
                
                TextField("Email", text: $vm.email_SignUp)
                    .foregroundColor(Color("Color"))
                    .keyboardType(.emailAddress)
                
                Divider()
                    .background(Color("Color").opacity(0.5))
            }
            
                    HStack{
            Text("Password")
                .foregroundColor(Color("Color"))
                .padding(.top,10)
                    Spacer()
                }
            
            VStack{
                
                ZStack {

                    if !hide {
                        SecureField("Password", text: $vm.password_SignUp)
                            .foregroundColor(Color("Color"))
//                            .background(Color("Color").opacity(0.5))
//                            .foregroundColor(Color.white)
                    }else {
                        TextField("Password", text: $vm.password_SignUp)
                            .foregroundColor(Color("Color"))
//                            .foregroundColor(Color.white)
                    }
                }
                   .overlay(

                        Button(action: {withAnimation{self.hide.toggle()}}, label: {
                            Image(systemName: !hide ? "eye.slash" : "eye")
                                .foregroundColor(Color("Color").opacity(0.5))
//                                .foregroundColor(.gray)
                        })
                        .buttonStyle(PlainButtonStyle())
                        ,alignment: .trailing
                    )
                
                Divider()
                    .background(Color("Color").opacity(0.5))
            }
            
                HStack{
            Text("Re-Enter")
                .foregroundColor(Color("Color"))
                .padding(.top,10)
                Spacer()
            }
            
            // use separate txt field Bindings here....
            
            VStack{
                
                ZStack {

                    if !hide {
                        SecureField("Re-Enter", text: $vm.reEnterPassword)
                            .foregroundColor(Color("Color"))
                    }else {
                        TextField("Re-Enter", text: $vm.reEnterPassword)
                            .foregroundColor(Color("Color"))
                    }
                }
                   .overlay(

                        Button(action: {withAnimation{self.secondHide.toggle()}}, label: {
                            Image(systemName: !secondHide ? "eye.slash" : "eye")
                                .foregroundColor(Color("Color").opacity(0.5))
                        })
                        .buttonStyle(PlainButtonStyle())
                        ,alignment: .trailing
                    )
                
                Divider()
                    .background(Color("Color").opacity(0.5))
            }
            
            HStack{
                
                Spacer()
                
                // Login Button...
                
                Button(action: vm.signUp) {
                    
                    Text("Sign Up")
                        .fontWeight(.bold)
                        .modifier(BTNModifier(isDark: false))
                }
                
                Spacer()
            }
            .padding(.top)
            
           
            
//            }
            }
            Spacer(minLength: 0)
//        }
        }
        .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 50)
        .padding()
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
    }
}
