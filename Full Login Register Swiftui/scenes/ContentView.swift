//
//  ContentView.swift
//  Full Login Register Swiftui
//
//  Created by hosam on 2/20/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm : ModelData
    @AppStorage("main") var isMain: Bool = false
    var body: some View {
        if isMain {
            HomeLogin()
                .statusBar(hidden: false)
        }
        else {
            Home()
                .edgesIgnoringSafeArea(.all)
                .statusBar(hidden: true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
