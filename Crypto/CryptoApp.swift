//
//  CryptoApp.swift
//  Crypto
//
//  Created by Piyush Singh on 22/01/23.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
