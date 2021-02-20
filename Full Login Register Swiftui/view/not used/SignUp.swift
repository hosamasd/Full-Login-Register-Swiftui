////
////  SignUp.swift
////  Second log signup
////
////  Created by hosam on 1/21/21.
////
//
//import SwiftUI
//
//struct SignUp: View {
//
//    @State var hide = false
//    @State var secondHide = false
//    @Binding var user:String
//    @Binding var pass:String
//    @Binding var rePass:String
//    @Binding var isSMSCode:Bool
//    @EnvironmentObject var vm: ModelData
//    var body: some View {
//
//        //        ScrollView(height < 750 ? .vertical : .init()) {
//        VStack(alignment: .leading, spacing: 25) {
//
//            Text("Sign Up")
//                .font(.system(size: 35, weight: .bold))
//                .foregroundColor(Color("Color"))
//            //                .padding(.top)
//
//
//            ScrollView(height < 750 ? .vertical : .init()) {
//
//                //                VStack(alignment: .leading, spacing: 25) {
//
//                Text("Email")
//                    .foregroundColor(Color("Color"))
//                    .padding(.top,10)
//
//                VStack{
//
//                    TextField("Email", text: $user)
//                        .keyboardType(.emailAddress)
//
//                    Divider()
//                        .background(Color("Color").opacity(0.5))
//                }
//
//                Text("Password")
//                    .foregroundColor(Color("Color"))
//                    .padding(.top,10)
//
//                VStack{
//
//                    ZStack {
//
//                        if !hide {
//                            SecureField("Password", text: $pass)
//                            //                            .background(Color("Color").opacity(0.5))
//                            //                            .foregroundColor(Color.white)
//                        }else {
//                            TextField("Password", text: $pass)
//                            //                            .foregroundColor(Color.white)
//                        }
//                    }
//                    .overlay(
//
//                        Button(action: {withAnimation{self.hide.toggle()}}, label: {
//                            Image(systemName: !hide ? "eye.slash" : "eye")
//                                .foregroundColor(Color("Color").opacity(0.5))
//                            //                                .foregroundColor(.gray)
//                        })
//                        .buttonStyle(PlainButtonStyle())
//                        ,alignment: .trailing
//                    )
//
//                    Divider()
//                        .background(Color("Color").opacity(0.5))
//                }
//
//                Text("Re-Enter")
//                    .foregroundColor(Color("Color"))
//                    .padding(.top,10)
//
//                // use separate txt field Bindings here....
//
//                VStack{
//
//                    ZStack {
//
//                        if !hide {
//                            SecureField("Re-Enter", text: $rePass)
//                                .foregroundColor(Color.white)
//                        }else {
//                            TextField("Re-Enter", text: $rePass)
//                                .foregroundColor(Color.white)
//                        }
//                    }
//                    .overlay(
//
//                        Button(action: {withAnimation{self.secondHide.toggle()}}, label: {
//                            Image(systemName: !secondHide ? "eye.slash" : "eye")
//                                .foregroundColor(Color("Color").opacity(0.5))
//                        })
//                        .buttonStyle(PlainButtonStyle())
//                        ,alignment: .trailing
//                    )
//
//                    Divider()
//                        .background(Color("Color").opacity(0.5))
//                }
//
//                HStack{
//
//                    Spacer()
//
//                    // Login Button...
//
//                    Button(action: {}) {
//
//                        Text("Sign Up")
//                            .fontWeight(.bold)
//                            .foregroundColor(.white)
//                            .padding(.vertical)
//                            .padding(.horizontal,45)
//                            .background(Color("Color"))
//                            .clipShape(Capsule())
//                    }
//
//                    Spacer()
//                }
//                .padding(.top)
//
//                HStack{
//
//                    Spacer()
//
//                    // Login Button...
//
//                    Button(action: { withAnimation(.easeIn){
//
//                        self.isSMSCode.toggle()
//                    }}) {
//
//                        Text("SMS code")
//                            .fontWeight(.bold)
//                            .modifier(BTNModifier())
//                    }
//                    
//                    Spacer()
//                }
//                .padding(.top)
//
//                //            }
//            }
//            Spacer(minLength: 0)
//            //        }
//        }
//        .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 50)
//        .padding()
//        .alert(isPresented: $vm.alert) {
//
//            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
//        }
//    }
//}
