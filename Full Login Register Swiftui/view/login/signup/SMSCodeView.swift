//
//  SMSCodeView.swift
//  Chat With Swiftui
//
//  Created by hosam on 2/17/21.
//

import SwiftUI

struct SMSCodeView: View {
    
    @State var password = ""
    // you can change it when user clicks reset password....
    // AppStorage => UserDefaults....
    @AppStorage("lock_Password") var key = "246810"
    //    @Binding var unLocked : Bool
    @State var unLocked = false
    @State var wrongPassword = false
    let height = UIScreen.main.bounds.width < 750 ? true : false
    @State var isType = false
    @State var showAlert = false
    @EnvironmentObject var vm: ModelData
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        ZStack{
            
            VStack( spacing: 25) {
                //            Spacer(minLength: 0)
                HStack{
                    Text("Enter Pin to Unlock")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding(.top,height ? 40 : 20)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                
                HStack(spacing: 22){
                    
                    // Password Circle View...
                    
                    ForEach(0..<6,id: \.self){index in
                        
                        PasswordView(index: index, password: $password)
                    }
                }
                // for smaller size iphones...
                .padding(.top,height  ? 20 : 30)
                
                // KeyPad....
                
                Spacer(minLength: 0)
                
                //            if isType {
                //                Text(wrongPassword ? "Incorrect Pin" : "Passed!!")
                //                    .foregroundColor(wrongPassword ? .red : .green)
                //                    .fontWeight(.heavy)
                //
                //            }
                
                //            Spacer(minLength: 0)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3),spacing: height  ? 5 : 15){
                    
                    // Password Button ....
                    
                    ForEach(1...9,id: \.self){value in
                        
                        PasswordButton(value: "\(value)",password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword, isType: $isType, show: $showAlert)
                    }
                    
                    PasswordButton(value: "delete.fill",password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword, isType: $isType, show: $showAlert)
                    
                    PasswordButton(value: "0", password: $password, key: $key, unlocked: $unLocked, wrongPass: $wrongPassword, isType: $isType, show: $showAlert)
                }
                .padding(.bottom)
                
            }
            
            
            
        }
        
        .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 50)
        .padding()
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
        .onReceive(timer   , perform: { _ in
            if showAlert {
                vm.checkSMSCode(s: wrongPassword)
                showAlert=false
            }
        })
        //        .preferredColorScheme(.dark)
    }
}

struct HomeLogin_Presviews: PreviewProvider {
    static var previews: some View {
        SMSCodeView()
    }
}
