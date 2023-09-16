//
//  BudgetAppApp.swift
//  BudgetApp
//
//  Created by Daniel Arteaga on 9/14/23.
//

import SwiftUI

@main
struct BudgetAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                }
                MonthlyView()
                    .tabItem {
                        Label("Monthly", systemImage: "list.dash")
                    }
                GoalView()
                    .tabItem{
                        Label("Goal", systemImage: "flag.checkered")
                    }
                SettingView()
                    .tabItem{
                        Label("Setting", systemImage: "gear")
                    }
            }
        }
    }
}
