//
//  ContentView.swift
//  BudgetApp
//
//  Created by Daniel Arteaga on 9/14/23.
//

import SwiftUI

struct HomeContentView: View {
    
    var body: some View {
        VStack {
            DashboardView()
            Spacer()
            StatsView()
            Spacer()
            ListView()
        }
        .background(.blue)
    }
}

struct DashboardView: View {
    var body: some View {
        HStack {
            Text("Dashboard")
                .font(.title)
                .bold()
            Spacer()
            Image(systemName: "bell")
                .imageScale(.large)
        }
        .padding()
    }
}
    
struct StatsView: View {
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350, height: 250)
                    
                   
                Text("Stats View")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
            }
            .foregroundColor(.white)
    }
}
struct ListView: View {
    
    var body: some View {
        VStack{
            let shape = RoundedRectangle(cornerRadius: 10)
            
            ZStack {
                shape.frame(width: 350, height: 50)
                
                HStack(spacing: 180) {
                    Text("Income")
                        .bold()
                        .foregroundColor(.black)
                    Text("$2,000")
                        .bold()
                        .foregroundColor(.black)
                }
                
            }.foregroundColor(.white)
            
            ZStack {
                shape.frame(width: 350, height: 50)
                
                HStack(spacing: 150) {
                    Text("Credit Card")
                        .bold()
                        .foregroundColor(.black)
                    Text("$5,000")
                        .bold()
                        .foregroundColor(.black)
                }
                
            }.foregroundColor(.white)
            
            ZStack {
                shape.frame(width: 350, height: 50)
                
                HStack(spacing: 175) {
                    Text("Expenses")
                        .bold()
                        .foregroundColor(.black)
                    Text("$8,000")
                        .bold()
                        .foregroundColor(.black)
                }
                
            }.foregroundColor(.white)
            
            ZStack {
                shape.frame(width: 350, height: 50)
                
                HStack(spacing: 175) {
                    Text("Saving")
                        .bold()
                        .foregroundColor(.black)
                    Text("$3,000")
                        .bold()
                        .foregroundColor(.black)
                }
                
            }.foregroundColor(.white)
            
            
        }.padding()
    }
}

    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomeContentView()
            
        }
    }
