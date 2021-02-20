////
////  MainStateWelcomeView.swift
////  Chat With Swiftui
////
////  Created by hosam on 2/17/21.
////
//
//import SwiftUI
//
//struct MainStateWelcomeView: View {
//    
//    @Binding var isForgetPassword:Bool
//    
//    @Binding var signUp:Bool
//    //    @Binding var isSecondState:Bool
//    @Binding var isSmsCode:Bool
//    var width = UIScreen.main.bounds.width
//    @EnvironmentObject var vm: ModelData
//
//    var body: some View {
//        
//        Color("Color")
//            .clipShape(CShapes(isForget: signUp ? isSmsCode :   isForgetPassword))
//        
//        if signUp {
//            if !isSmsCode {
//                Path{path in
//                    
//                    // adding 40 for center...
//                    
//                    path.addArc(center: CGPoint(x: UIScreen.main.bounds.width - 120 , y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
//                }
//                .fill(Color.white)
//            }
//            
//            if isSmsCode  {
//                Path{path in
//                    
//                    // adding 40 for center...
//                    
//                    path.addArc(center: CGPoint(x: 120 , y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
//                }
//                .fill(Color.white)
//            }
//        }else {
//            
//            if !isForgetPassword {
//                Path{path in
//                    
//                    // adding 40 for center...
//                    
//                    path.addArc(center: CGPoint(x: UIScreen.main.bounds.width - 120 , y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
//                }
//                .fill(Color.white)
//            }
//            
//            if isForgetPassword  {
//                Path{path in
//                    
//                    // adding 40 for center...
//                    
//                    path.addArc(center: CGPoint(x: 120 , y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
//                }
//                .fill(Color.white)
//            }
//            
//        }
//        
//        // adding Buttons...
//        
//        if signUp {
//            
//            if !isSmsCode {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeIn){
//                        
//                        self.signUp = false
//                    }
//                    
//                }) {
//                    
//                    Image(systemName: signUp ? "xmark" : "person.fill")
//                        .font(.system(size: 25, weight: .bold))
//                        .foregroundColor(Color("Color"))
//                }
//                .offset(x: -110, y: -50)
//                // disabling Button When its not Use...
//                .disabled(signUp ? false : true)
//                
//            }
//            
//            if isSmsCode  {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeIn){
//                        
//                        self.isSmsCode = false
//                    }
//                    
//                }) {
//                    
//                    Image(systemName:  "person.fill")
//                        .font(.system(size: 25, weight: .bold))
//                        //                                .background(Color.red)
//                        .foregroundColor(Color("Color"))
//                }
//                .offset(x: -width + 130, y: -50)
//                // disabling Button When its not Use...
//                .disabled(!isSmsCode ? false : true)
//                
//            }
//            
//            if !isSmsCode {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeOut){
//                        
//                        self.signUp = true
//                    }
//                    
//                }) {
//                    
//                    Image(systemName: signUp ? "person.badge.plus.fill" : "xmark")
//                        .font(.system(size: signUp ? 26 : 25, weight: .bold))
//                        .foregroundColor(.white)
//                }
//                .offset(x: -30, y: -40)
//                            .disabled(!isSmsCode ? true : false)
//                
//            }
//            
//            if isSmsCode {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeOut){
//                        if vm.isFromForgetPass {
//                            self.vm.isSignUp=false
//                            self.isForgetPassword=false
//                            self.isSmsCode = false
//                            
////                            self.vm.isSecondState=false
////                            self.vm.isForgetPassword=false
////                            self.isSmsCode = false
//                        }else {
//                        self.isSmsCode = false
//                        }
//                    }
//                    
//                }) {
//                    
//                    Image(systemName:  "xmark")
//                        .font(.system(size: signUp ? 26 : 25, weight: .bold))
//                        .foregroundColor(.white)
//                    //                        .foregroundColor(.red)
//                }
//                .offset(x: -width + 50, y: -40)
//                //                .disabled(vm.isForgetPassword ? true : false)
//            }
//        }
//        else {
//            
//            if !isForgetPassword {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeIn){
//                        
//                        self.signUp = false
//                    }
//                    
//                }) {
//                    
//                    Image(systemName: signUp ? "xmark" : "person.fill")
//                        .font(.system(size: 25, weight: .bold))
//                        .foregroundColor(Color("Color"))
//                }
//                .offset(x: -110, y: -50)
//                // disabling Button When its not Use...
//                .disabled(signUp ? false : true)
//                
//            }
//            
//            if isForgetPassword  {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeIn){
//                        
//                        self.isForgetPassword = false
//                    }
//                    
//                }) {
//                    
//                    Image(systemName:  "person.fill")
//                        .font(.system(size: 25, weight: .bold))
//                        //                                .background(Color.red)
//                        .foregroundColor(Color("Color"))
//                }
//                .offset(x: -width + 130, y: -50)
//                // disabling Button When its not Use...
//                .disabled(signUp ? false : true)
//                
//            }
//            
//            if !isForgetPassword {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeOut){
//                        
//                        self.signUp = true
//                    }
//                    
//                }) {
//                    
//                    Image(systemName: signUp ? "person.badge.plus.fill" : "xmark")
//                        .font(.system(size: signUp ? 26 : 25, weight: .bold))
//                        .foregroundColor(.white)
//                }
//                .offset(x: -30, y: -40)
//                //            .disabled(signUp ? true : false)
//                
//            }
//            
//            if isForgetPassword {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeOut){
//                        
//                        self.isForgetPassword = false
//                    }
//                    
//                }) {
//                    
//                    Image(systemName:  "xmark")
//                        .font(.system(size: signUp ? 26 : 25, weight: .bold))
//                        .foregroundColor(.white)
//                    //                        .foregroundColor(.red)
//                }
//                .offset(x: -width + 50, y: -40)
//                //                .disabled(vm.isForgetPassword ? true : false)
//            }
//        }
//    }
//}
//
////struct MainStateWelcomeView_Previews: PreviewProvider {
////    static var previews: some View {
////        MainStateWelcomeView()
////    }
////}
