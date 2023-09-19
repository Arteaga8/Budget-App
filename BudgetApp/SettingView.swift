//
//  SettingView.swift
//  BudgetApp
//
//  Created by Daniel Arteaga on 9/14/23.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        Color.blue
                    .overlay(
                        Color.green
                            .opacity(0.5) // Adjust the opacity to blend the colors
                    )
                    .edgesIgnoringSafeArea(.all)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
