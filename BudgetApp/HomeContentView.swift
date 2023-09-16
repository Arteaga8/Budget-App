//
//  ContentView.swift
//  BudgetApp
//
//  Created by Daniel Arteaga on 9/14/23.
//

import SwiftUI

struct HomeContentView: View {
    let content: [String] = ["Income", "Expenses", "Credit Card", "Saving"]
    let content1: [String] = ["$10,000", "$5,000", "$8,000", "$20,000"]
    
    var body: some View {
        VStack {
            DashboardView(DvContent: "Dashboard")
            StatsView()
        
            VStack {
                IncomeView(Content: content[0], Content1: content1[0])
                ExpensesView(Content: content[1], Content1: content1[1])
                CreditCardView(content: content[2], content1: content1[2])
                SavingView(content: content[3], content1: content1[3])
            }
            Spacer()
            HStack(alignment: .center, spacing: 85) {
                //HomeView Button
              homeButtom
                // ListView Buttom
                listButtom
                //GoalView Buttom
               goalButtom
                //Setting Buttom
                Button {
                    print("Setting")
                } label: {
                    Image(systemName: "gear")
                }

            }
            .imageScale(.large)
            .padding()
        }.padding()
    }
    
    var homeButtom: some View {
        Button {
            print("HomeView")
        } label: {
            Image(systemName: "house")
        }
    }
    
    var listButtom: some View {
        Button {
            print("ListView")
        } label: {
            Image(systemName: "list.bullet")
        }
    }
    
    var goalButtom: some View {
        Button {
            print("GoalView")
        } label: {
            Image(systemName: "flag.checkered")
        }
    }
}

struct DashboardView: View {
    let DvContent: String
    var body: some View {
        HStack {
            Text(DvContent).font(.largeTitle).bold()
            Spacer()
            Image(systemName: "bell").imageScale(.large)
        }
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
            .foregroundColor(.red)
    }
}

struct IncomeView: View {
    var Content: String
    var Content1: String
    
    var body: some View {
        
        let shape = RoundedRectangle(cornerRadius: 10)

        ZStack {
            shape.frame(width: 350, height: 50)
            
            HStack(spacing: 180) {
                Text(Content).bold().foregroundColor(.black)
                Text(Content1).bold().foregroundColor(.black)
            }
        }.foregroundColor(.gray)
    }
}

struct ExpensesView: View {
    var Content: String
    var Content1: String
    
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 10)
        
        ZStack {
            shape.frame(width: 350, height: 50)
            
            HStack(spacing: 150) {
                Text(Content).bold().foregroundColor(.black)
                Text(Content1).bold().foregroundColor(.black)
            }
        }.foregroundColor(.gray)
    }
}

struct CreditCardView: View {
    var content: String
    var content1: String
    
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 10)
        
        ZStack {
            shape.frame(width: 350, height: 50)
            
            HStack(spacing: 150) {
                Text(content).bold().foregroundColor(.black)
                Text(content1).bold().foregroundColor(.black)
            }
        }.foregroundColor(.gray)
    }
}

struct SavingView: View {
    var content: String
    var content1: String
    
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 10)
        
        ZStack {
            shape.frame(width: 350, height: 50)
            
            HStack(spacing: 175) {
                Text(content).bold().foregroundColor(.black)
                Text(content1).bold().foregroundColor(.black)
            }
        }.foregroundColor(.gray)
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomeContentView()
            
        }
    }
