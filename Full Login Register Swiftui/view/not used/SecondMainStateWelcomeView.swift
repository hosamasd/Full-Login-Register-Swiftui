////
////  SecondMainStateWelcomeView.swift
////  Chat With Swiftui
////
////  Created by hosam on 2/17/21.
////
//
//import SwiftUI
//
//struct SecondMainStateWelcomeView: View {
////    @Binding var isForgetPassword:Bool
////
////    @Binding var vm.isSecondState:Bool
////    //    @Binding var isSecondState:Bool
////    @Binding var isSmsCode:Bool
//    var width = UIScreen.main.bounds.width
//    @EnvironmentObject var vm: ModelData
//
//    var body: some View {
//        
//        Color("Color")
//            .clipShape(CShapes(isForget: vm.isSecondState ? vm.isGetSMScODE :   vm.isForgetPassword))
//        
//        if vm.isSecondState {
//            if !vm.isGetSMScODE {
//                Path{path in
//                    
//                    // adding 40 for center...
//                    
//                    path.addArc(center: CGPoint(x: UIScreen.main.bounds.width - 120 , y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
//                }
//                .fill(Color.white)
//            }
//            
//            if vm.isGetSMScODE  {
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
//            if !vm.isForgetPassword {
//                Path{path in
//                    
//                    // adding 40 for center...
//                    
//                    path.addArc(center: CGPoint(x: UIScreen.main.bounds.width - 120 , y: UIScreen.main.bounds.height - 50), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
//                }
//                .fill(Color.white)
//            }
//            
//            if vm.isForgetPassword  {
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
//        if vm.isSecondState {
//            
//            if !vm.isGetSMScODE {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeIn){
//                        
//                        self.vm.isSecondState = false
//                    }
//                    
//                }) {
//                    
//                    Image(systemName: vm.isSecondState ? "xmark" : "person.fill")
//                        .font(.system(size: 25, weight: .bold))
//                        .foregroundColor(Color("Color"))
//                }
//                .offset(x: -110, y: -50)
//                // disabling Button When its not Use...
//                .disabled(vm.isSecondState ? false : true)
//                
//            }
//            
//            if vm.isGetSMScODE  {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeIn){
//                        
//                        self.vm.isGetSMScODE = false
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
//                .disabled(!vm.isGetSMScODE ? false : true)
//                
//            }
//            
//            if !vm.isGetSMScODE {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeOut){
//                        
//                        self.vm.isSecondState = true
//                    }
//                    
//                }) {
//                    
//                    Image(systemName: vm.isSecondState ? "person.badge.plus.fill" : "xmark")
//                        .font(.system(size: vm.isSecondState ? 26 : 25, weight: .bold))
//                        .foregroundColor(.white)
//                }
//                .offset(x: -30, y: -40)
//                            .disabled(!vm.isGetSMScODE ? true : false)
//                
//            }
//            
//            if vm.isGetSMScODE {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeOut){
//                        if vm.isFromForgetPass {
//                            self.vm.isSecondState=false
//                            self.vm.isForgetPassword=false
//                            self.vm.isGetSMScODE = false
//                            
////                            self.vm.isSecondState=false
////                            self.vm.isForgetPassword=false
////                            self.vm.isGetSMScODE = false
//                        }else {
//                        self.vm.isGetSMScODE = false
//                        }
//                    }
//                    
//                }) {
//                    
//                    Image(systemName:  "xmark")
//                        .font(.system(size: vm.isSecondState ? 26 : 25, weight: .bold))
//                        .foregroundColor(.white)
//                    //                        .foregroundColor(.red)
//                }
//                .offset(x: -width + 50, y: -40)
//                //                .disabled(vm.vm.isForgetPassword ? true : false)
//            }
//        }
//        else {
//            
//            if !vm.isForgetPassword {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeIn){
//                        
//                        self.vm.isSecondState = false
//                    }
//                    
//                }) {
//                    
//                    Image(systemName: vm.isSecondState ? "xmark" : "person.fill")
//                        .font(.system(size: 25, weight: .bold))
//                        .foregroundColor(Color("Color"))
//                }
//                .offset(x: -110, y: -50)
//                // disabling Button When its not Use...
//                .disabled(vm.isSecondState ? false : true)
//                
//            }
//            
//            if vm.isForgetPassword  {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeIn){
//                        
//                        self.vm.isForgetPassword = false
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
//                .disabled(vm.isSecondState ? false : true)
//                
//            }
//            
//            if !vm.isForgetPassword {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeOut){
//                        
//                        self.vm.isSecondState = true
//                    }
//                    
//                }) {
//                    
//                    Image(systemName: vm.isSecondState ? "person.badge.plus.fill" : "xmark")
//                        .font(.system(size: vm.isSecondState ? 26 : 25, weight: .bold))
//                        .foregroundColor(.white)
//                }
//                .offset(x: -30, y: -40)
//                //            .disabled(vm.isSecondState ? true : false)
//                
//            }
//            
//            if vm.isForgetPassword {
//                
//                Button(action: {
//                    
//                    withAnimation(.easeOut){
//                        
//                        self.vm.isForgetPassword = false
//                    }
//                    
//                }) {
//                    
//                    Image(systemName:  "xmark")
//                        .font(.system(size: vm.isSecondState ? 26 : 25, weight: .bold))
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
