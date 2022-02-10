//
//  ClockceptionApp.swift
//  Clockception
//
//  Created by Alok Sagar on 10/02/22.
//

import SwiftUI

@main
struct ClockceptionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ClockViewModel())
        }
    }
}
