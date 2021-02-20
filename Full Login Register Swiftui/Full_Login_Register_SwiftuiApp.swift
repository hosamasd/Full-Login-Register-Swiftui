//
//  Full_Login_Register_SwiftuiApp.swift
//  Full Login Register Swiftui
//
//  Created by hosam on 2/20/21.
//

import SwiftUI

@main
struct Full_Login_Register_SwiftuiApp: App {
    var order = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView() .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
                .environmentObject(order)
        }
    }
}
