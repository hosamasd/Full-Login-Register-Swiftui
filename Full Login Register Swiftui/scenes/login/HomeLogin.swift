//
//  HomeLogin.swift
//  Chat With Swiftui
//
//  Created by hosam on 2/17/21.
//

import SwiftUI

struct HomeLogin: View {
    
    @State var signUp = false
    @State var forgetPass = true
    @State var user = ""
    @State var pass = ""
    @State var rePass = ""
    @EnvironmentObject var vm: ModelData
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
            
            ZStack{
                
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
                    
                    if vm.isSecondState {
                        
                        //                    Color("Color")
                        //                        .clipShape(CShapes(isForget: vm.isForgetPassword))
                        
                        // adding another Curve...
                        
                        
                        
                        //                        MainStateWelcomeView(isForgetPassword: $vm.isForgetPassword, signUp: $vm.isSecondState,isSmsCode: $vm.isGetSMScODE)
                        
                        ThirdSecondMainStateWelcomeView()
//                        SecondMainStateWelcomeView()
                        //                    if !vm.isForgetPassword {
                        //                        Path{path in
                        //
                        //                            // adding 40 for center...
                        //
                        //                            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width - 120 , y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
                        //                        }
                        //                        .fill(Color.white)
                        //                    }
                        //
                        //                    if vm.isForgetPassword  {
                        //                        Path{path in
                        //
                        //                            // adding 40 for center...
                        //
                        //                            path.addArc(center: CGPoint(x: 120 , y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
                        //                        }
                        //                        .fill(Color.white)
                        //                    }
                        //
                        //
                        //                    // adding Buttons...
                        //
                        //                    if !vm.isForgetPassword {
                        //
                        //                        Button(action: {
                        //
                        //                            withAnimation(.easeIn){
                        //
                        //                                self.signUp = false
                        //                            }
                        //
                        //                        }) {
                        //
                        //                            Image(systemName: signUp ? "xmark" : "person.fill")
                        //                                .font(.system(size: 25, weight: .bold))
                        //                                .foregroundColor(Color("Color"))
                        //                        }
                        //                        .offset(x: -110, y: -50)
                        //                        // disabling Button When its not Use...
                        //                        .disabled(signUp ? false : true)
                        //
                        //                    }
                        //
                        //                    if vm.isForgetPassword  {
                        //
                        //                        Button(action: {
                        //
                        //                            withAnimation(.easeIn){
                        //
                        //                                self.vm.isForgetPassword = false
                        //                            }
                        //
                        //                        }) {
                        //
                        //                            Image(systemName:  "person.fill")
                        //                                .font(.system(size: 25, weight: .bold))
                        //                                //                                .background(Color.red)
                        //                                .foregroundColor(Color("Color"))
                        //                        }
                        //                        .offset(x: -width + 130, y: -50)
                        //                        // disabling Button When its not Use...
                        //                        .disabled(vm.isForgetPassword ? false : true)
                        //
                        //                    }
                        //
                        //                    if !vm.isForgetPassword {
                        //
                        //                        Button(action: {
                        //
                        //                            withAnimation(.easeOut){
                        //
                        //                                self.signUp = true
                        //                            }
                        //
                        //                        }) {
                        //
                        //                            Image(systemName: signUp ? "person.badge.plus.fill" : "xmark")
                        //                                .font(.system(size: signUp ? 26 : 25, weight: .bold))
                        //                                .foregroundColor(.white)
                        //                        }
                        //                        .offset(x: -30, y: -40)
                        //                        .disabled(signUp ? true : false)
                        //
                        //                    }
                        //
                        //                    if vm.isForgetPassword {
                        //
                        //                        Button(action: {
                        //
                        //                            withAnimation(.easeOut){
                        //
                        //                                self.vm.isForgetPassword = false
                        //                            }
                        //
                        //                        }) {
                        //
                        //                            Image(systemName:  "xmark")
                        //                                .font(.system(size: signUp ? 26 : 25, weight: .bold))
                        //                                .foregroundColor(.white)
                        //                            //                        .foregroundColor(.red)
                        //                        }
                        //                        .offset(x: -width + 50, y: -40)
                        //                        //                .disabled(vm.isForgetPassword ? true : false)
                        //                    }
                    }
                    else {
                        //                        Color("Color")
                        //                        .clipShape(CShapes(isForget: vm.isGetSMScODE))
                        ThirdSecondMainStateWelcomeView()
//                        SecondMainStateWelcomeView()
                        //                        MainStateWelcomeView(isForgetPassword: $vm.isForgetPassword, signUp: $vm.isSecondState, isSmsCode: $vm.isGetSMScODE)
                    }
                }
//                .padding(.bottom,10)
                
                // Moving View Up...
                // Adjusting View For ipHone 8 Like Model....
                
                // Login View...
                
                //                Forget
                
                if vm.isForgetPassword {
                    Forget( user: $user, isForget: $vm.isForgetPassword)
                    //                    Forget( user: $user, pass: $pass)
                }else {
                    LoginView()
                    //                    LoginView( user: $user, pass: $pass, isForget: $vm.isForgetPassword)
                    //                Forget( user: $user, pass: $pass)
                }
                
                if vm.isLoading{
                    VStack{
                        Spacer(minLength: 0)
                        
                        LoadingView()
                        Spacer(minLength: 0)
                    }
                }
            }
            .offset(y: vm.isSecondState ? -height + (height < 750 ? 100 : 130) : 0)//100
            .zIndex(1)
            // Moving View Front In Stack...
            
            // SignUp View...
            
            
//            if vm.isLoading{
//                VStack{
//                    Spacer(minLength: 0)
//
//                    LoadingView()
//                    Spacer(minLength: 0)
//                }
//            }
//            else {
            
            if vm.isGetSMScODE {
                SMSCodeView()
//                SMSCodeView(user: $user, pass: $pass, rePass: $rePass, isSMSCode: $vm.isGetSMScODE)
                
            }else {
               
                SecondSignUp()
            }
                
                
                if vm.isLoading{
//                    VStack{
//                        Spacer(minLength: 0)

                        LoadingView()
//                        Spacer(minLength: 0)
//                    }
                }
//                SignUp(user: $user, pass: $pass, rePass: $rePass, isSMSCode: $vm.isGetSMScODE)
                
            
//            }
        }
//        .padding(.bottom,10)
        .background(Color.white.edgesIgnoringSafeArea(.all))
        
        // changing user Interface Style...
        .preferredColorScheme(signUp ? .light : .dark)
    }
}

struct HomeLogin_Previews: PreviewProvider {
    static var previews: some View {
        HomeLogin()
    }
}
