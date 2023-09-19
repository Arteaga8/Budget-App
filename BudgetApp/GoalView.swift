//
//  GoalView.swift
//  BudgetApp
//
//  Created by Daniel Arteaga on 9/14/23.
//

import SwiftUI

struct GoalView: View {
    var body: some View {
        
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue) // Adjust color as needed
                .frame(width: geometry.size.width, height: geometry.size.height - geometry.safeAreaInsets.bottom)
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    struct GoalView_Previews: PreviewProvider {
        static var previews: some View {
            GoalView()
        }
    }
}
