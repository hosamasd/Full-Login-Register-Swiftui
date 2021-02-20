////
////  Forget.swift
////  Second log signup
////
////  Created by hosam on 1/25/21.
////
//
import SwiftUI
//
struct Forget: View {
    //
    @State var hide = false
    @Binding var user:String
    @Binding var isForget:Bool
    @EnvironmentObject var vm: ModelData
    
    //
    var body: some View {
        //        ScrollView(height < 750 ? .vertical : .init()) {
        VStack(alignment: .leading, spacing: 25) {
            
            Text("Forget")
                .font(.system(size: 35, weight: .bold))
                .foregroundColor(.white)
            
            Text("Email")
                .foregroundColor(.white)
                .padding(.top,10)
            
            VStack{
                
                TextField("Email", text: $vm.forgetEmail)
                
                Divider()
                    .background(Color.white.opacity(0.5))
            }
            
            HStack{
                
                Spacer()
                
                // Login Button...
                
                Button(action: {
                    self.vm.forget()
                }) {
                    
                    Text("Forget")
                        .fontWeight(.bold)
                        .modifier(BTNModifier())
                }
                
                Spacer()
            }
            .padding(.top)
            
            
            Spacer(minLength: 0)
        }
        .padding(.top,(UIApplication.shared.windows.first?.safeAreaInsets.top)! + 25)
        .padding()
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
    }
}
