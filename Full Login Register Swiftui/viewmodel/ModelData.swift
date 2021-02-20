//
//  ModelData.swift
//  Chattos
//
//  Created by hosam on 12/17/20.
//

import SwiftUI
//import Firebase

var height = UIScreen.main.bounds.height

class ModelData : ObservableObject {
    
    @AppStorage("main") var isMain: Bool = false
    
    @Published var isSignUp = false
    @Published var isFromForgetPass = false
    @Published var isForgetPassword = false
    @Published var isGetSMScODE = false
    @Published var isSecondState = false
    //    @Published var isGetMainScreen = false
    
    @Published var email = ""
    @Published var password = ""
    @Published var checkSMScODES = false
    @Published var forgetEmail = ""
    
    @Published var isResendSMS = false
    @Published var email_SignUp = ""
    @Published var password_SignUp = ""
    @Published var reEnterPassword = ""
    @Published var isLinkSend = false
    
    //    @Published var emailForeget = ""
    // AlertView With TextFields....
    
    // Error Alerts...
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var currentCode = "246810"
    // User Status....
    @AppStorage("email") var emails = ""
    @AppStorage("password") var passwords = ""
    
    @AppStorage("log_Status") var status = false
    
    // User choose bio and type name
    
    @AppStorage("after_log_signuup") var logOrSignup = false
    @AppStorage("log_Status") var logins = false
    
    
    // Loading ...
    
    @Published var isLoading = false
    
    
    func checkEmailAndPassword() -> Bool {
        
        if email.isValidEmail && password.count >= 8 {
            return true
        }
        return false
        
    }
    
    func checkEmail(email:String) -> Bool {
        return  email.isValidEmail ? true : false
    }
    
    func checkPassword(email:String) -> Bool {
        return  email.count >= 6 ? true : false
    }
    
    func checkEmailAndPasswordAndRepeat() -> Bool {
        
        if email_SignUp.isValidEmail && password_SignUp.count >= 8 && reEnterPassword == password_SignUp{
            return true
        }
        return false
        
    }
    
    func checkSMSCode(s:Bool)  {
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3) {
            withAnimation{
                self.isLoading.toggle()
                if s {
                    self.alertMsg = "Please type Correct Code !!!"
                    self.alert.toggle()
                    //                    self.isLoading.toggle()
                    return
                }else {
                    
                    //from forget go to login page
                    if self.isFromForgetPass  {
                        self.isSecondState = false
                        self.isForgetPassword=false
                        self.isGetSMScODE=false
                    }
                    // from register  go to main page
                    else {
                        self.isSecondState = false
                        self.isForgetPassword=false
                        self.isGetSMScODE=false
                        
                        self.isMain=true
                    }
                    
                    
                }
                //                self.isLoading.toggle()
                //                self.isForgetPassword=true
            }
            
        }
    }
    
    
    
    
    
    // Login...
    
    func login(){
        
        // checking all fields are inputted correctly...
        
        if email == "" || password == ""{
            
            self.alertMsg = "Fill the contents properly !!!"
            self.alert.toggle()
            return
        }
        
        if !checkEmail(email: email) {
            self.alertMsg = "Please type valid Email"
            self.alert.toggle()
            return
        }
        
        if !checkPassword(email: password) {
            self.alertMsg = "Password shouldn't less than  6 characters"
            self.alert.toggle()
            return
        }
        
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3) {
            withAnimation{
                self.isLoading.toggle()
                
                if self.email == "b@b.com" {
                    self.isMain=true
                    return
                }else {
                    self.alertMsg = "Please type valid Email"
                    self.alert.toggle()
                    return
                }
                
                
            }
            
        }
    }
    
    // forget...
    
    func forget()  {
        // checking all fields are inputted correctly...
        
        if !checkEmail(email: forgetEmail) {
            self.alertMsg = "Please type valid Email"
            self.alert.toggle()
            return
        }
        
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3) {
            withAnimation{
                
                
                self.isLoading.toggle()
                if self.forgetEmail == "b@b.com"{
                    
                    self.isForgetPassword=false
                    self.isSecondState=true
                    self.isGetSMScODE=true
                    self.isFromForgetPass=true
                    self.forgetEmail = ""
                }else {
                    self.alert.toggle()
                    self.alertMsg = "Please enter valid email!"
                    return
                }
                
            }
            
        }
    }
    
    // SignUp..
    
    func signUp(){
        
        // checking all fields are inputted correctly...
        
        if email_SignUp == "" || password_SignUp == "" || reEnterPassword == ""{
            
            self.alertMsg = "Fill the contents properly !!!"
            self.alert.toggle()
            return
        }
        //
        if !checkEmail(email: email_SignUp) {
            self.alertMsg = "Please type valid Email"
            self.alert.toggle()
            return
        }
        
        if !checkPassword(email: password_SignUp) {
            self.alertMsg = "Password should be more than  5 characters"
            self.alert.toggle()
            return
        }
        
        if reEnterPassword != password_SignUp {
            self.alertMsg = "Password and RePassword should be same!"
            self.alert.toggle()
            return
        }
        
        
        
        //
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3) {
            withAnimation{
                self.isLoading.toggle()
                self.isGetSMScODE=true
            }
            
        }
    }
    
    // log Out...
    
    func logOut(){
        
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3) {
            
            
            
            withAnimation{
                self.isLoading.toggle()
                
                self.isSecondState = false
                self.isForgetPassword=false
                self.isGetSMScODE=false
            }
        }
        
        // clearing all data...
        email = ""
        password = ""
        email_SignUp = ""
        password_SignUp = ""
        reEnterPassword = ""
        forgetEmail=""
    }
    
}
