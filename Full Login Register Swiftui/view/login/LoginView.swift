//
//  LoginView.swift
//  Second log signup
//
//  Created by hosam on 1/21/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var hide = false
    //    @Binding var user:String
    //    @Binding var pass:String
    //    @Binding var isForget:Bool
    @EnvironmentObject var vm: ModelData
    
    var body: some View {
        
//        ScrollView(height < 750 ? .vertical : .init()) {
            VStack(alignment: .leading, spacing: 25) {
                
                Text("Login")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.white)
                
                Text("Email")
                    .foregroundColor(.white)
                    .padding(.top,10)
                
                VStack{
                    
                    TextField("Email", text: $vm.email)
                        .keyboardType(.emailAddress)
                    
                    Divider()
                        .background(Color.white.opacity(0.5))
                }
                
                Text("Password")
                    .foregroundColor(.white)
                    .padding(.top,10)
                
                VStack{
                    
                    ZStack {
                        
                        if !hide {
                            SecureField("Password", text: $vm.password)
                                .foregroundColor(Color.white)
                        }else {
                            TextField("Password", text: $vm.password)
                                .foregroundColor(Color.white)
                        }
                    }
                    .overlay(
                        
                        Button(action: {withAnimation{self.hide.toggle()}}, label: {
                            Image(systemName: !hide ? "eye.slash" : "eye")
                                .foregroundColor(Color.white.opacity(0.5))
                            //                                .foregroundColor(.gray)
                        })
                        .buttonStyle(PlainButtonStyle())
                        ,alignment: .trailing
                    )
                    
                    
                    Divider()
                        .background(Color.white.opacity(0.5))
                }
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Button(action:
                            {withAnimation{
                                vm.isForgetPassword=true
                                //                            isForget=true
                                
                            }} ){
                        
                        Text("Forget Password?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    
                }
                //            .padding(.vertical)
                
                HStack{
                    
                    Spacer()
                    
                    // Login Button...
                    
                    Button(action: {
                        vm.login()
                    }) {
                        
                        Text("Login")
                            .fontWeight(.bold)
                            .modifier(BTNModifier())
                    }
                    
                    Spacer()
                }
                .padding(.top)
                
                Spacer(minLength: 0)
                
//        }
        }
//            .padding(.bottom,(UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 50)
        .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 25)//25
        .padding()
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
    }
}
