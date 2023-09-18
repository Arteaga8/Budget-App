//
//  ContentView.swift
//  BudgetApp
//
//  Created by Daniel Arteaga on 9/14/23.
//

import SwiftUI

struct HomeContentView: View {
    let name: [String] = ["Income", "Expenses", "Credit Card", "Saving"]
    let numbers: [String] = ["$10,000", "$5,000", "$8,000", "$20,000"]
    
    var body: some View {
        VStack {
            dashboardView
            chartView
            VStack {
                IncomeView(content: name[0], content1: numbers[0])
                ExpensesView(content: name[1], content1: numbers[1])
                CreditCardView(content: name[2], content1: numbers[2])
                SavingView(content: name[3], content1: numbers[3])
            }
            Spacer()
            HStack(alignment: .center, spacing: 70) {
                homeButtom
                listButtom
                goalButtom
                settingButtom
            }.imageScale(.large).foregroundColor(.black)
            
        }.padding()
            .background(.blue)
    }
    
    
    // DashboardView
    var dashboardView: some View {
        HStack {
            Text("Dashboard").font(.largeTitle).bold()
            Spacer()
            Image(systemName: "bell").imageScale(.large)
        }
    }
    //ChartView
    var chartView: some View {
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
    
    //HomeView Button
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
    //GoalView Buttom
    var goalButtom: some View {
        Button {
            print("GoalView")
        } label: {
            Image(systemName: "flag.checkered")
        }
    }
    //Setting Buttom
    var settingButtom: some View {
        Button {
            print("SettingView")
        } label: {
            Image(systemName: "gear")
        }
    }
}

struct IncomeView: View {
    var content: String
    var content1: String
    
    var body: some View {
        
        let shape = RoundedRectangle(cornerRadius: 10)

        ZStack {
            shape.frame(width: 350, height: 50)
            
            HStack(spacing: 180) {
                Text(content).bold().foregroundColor(.black)
                Text(content1).bold().foregroundColor(.black)
            }
        }.foregroundColor(.gray)
    }
}

struct ExpensesView: View {
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
