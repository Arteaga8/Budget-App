//
//  ContentView.swift
//  BudgetApp
//
//  Created by Daniel Arteaga on 9/14/23.
//

import SwiftUI
import Charts

@available(iOS 17.0, *)
struct HomeContentView: View {
    let name: [String] = ["Income", "Expenses", "Credit Card", "Saving"]
    let numbers: [String] = ["$10,000", "$5,000", "$8,000", "$20,000"]
    
    var body: some View {
        ZStack {
            backgroundColor
            VStack {
                dashboardView
                chartView
                VStack {
                    IncomeView(content: name[0], content1: numbers[0])
                    ExpensesView(content: name[1], content1: numbers[1])
                    CreditCardView(content: name[2], content1: numbers[2])
                    SavingView(content: name[3], content1: numbers[3])
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 2).frame(width: 400)
                    HStack(alignment: .center, spacing: 70) {
                        homeButtom
                        listButtom
                        goalButtom
                        settingButtom
                    }.imageScale(.large).foregroundColor(.black)
                }.foregroundColor(.white)
            } .edgesIgnoringSafeArea(.bottom)
        }
    }
    
    // DashboardView
    var dashboardView: some View {
        HStack {
            Text("Dashboard").font(.largeTitle).bold()
            Spacer()
            Image(systemName: "bell").imageScale(.large)
        }
        .foregroundColor(.white)
        .padding()
    }
    //ChartView
    @available(iOS 17.0, *)
    var chartView: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 350, height: 250)
            
            BudgetChart()
                .frame(width: 350, height: 250)
                .foregroundColor(.red)
        }
        .foregroundColor(.white)
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
    
    //Bacground Color
    var backgroundColor: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.blue, Color.green]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
    
    // Chart Data
    @available(iOS 17.0, *)
    struct BudgetChart: View   {
        var data = [
            BudgetDataPoint(category: "Income", amount: 1000),
            BudgetDataPoint(category: "Expenses", amount: 500),
            BudgetDataPoint(category: "Credit Card", amount: 900),
            BudgetDataPoint(category: "Saving", amount: 400)
        ]
    
        var body: some View {
            Chart {
                ForEach (data) { d in
                    SectorMark(angle: PlottableValue.value("Amount", d.amount),
                               innerRadius: .ratio(0.5),
                        angularInset: 2)
                            .foregroundStyle(by: .value("Category", d.category))
                            .cornerRadius(5)
                }
            }.padding()
        }
    }
    
    struct IncomeView: View {
        var content: String
        var content1: String
        
        var body: some View {
            
            let shape = RoundedRectangle(cornerRadius: 10)
            
            ZStack {
                shape.frame(width: 350, height: 65)
                
                HStack(spacing: 180) {
                    Text(content).bold().foregroundColor(.black).font(.title3)
                    Text(content1).bold().foregroundColor(.black).font(.title3)
                }
            }.foregroundColor(.white)
        }
    }
    
    struct ExpensesView: View {
        var content: String
        var content1: String
        
        var body: some View {
            let shape = RoundedRectangle(cornerRadius: 10)
            
            ZStack {
                shape.frame(width: 350, height: 65)
                
                HStack(spacing: 150) {
                    Text(content).bold().foregroundColor(.black).font(.title3)
                    Text(content1).bold().foregroundColor(.black).font(.title3)
                }
            }.foregroundColor(.white)
        }
    }
    
    struct CreditCardView: View {
        var content: String
        var content1: String
        
        var body: some View {
            let shape = RoundedRectangle(cornerRadius: 10)
            
            ZStack {
                shape.frame(width: 350, height: 65)
                
                HStack(spacing: 150) {
                    Text(content).bold().foregroundColor(.black).font(.title3)
                    Text(content1).bold().foregroundColor(.black).font(.title3)
                }
            }.foregroundColor(.white)
        }
    }
    
    struct SavingView: View {
        var content: String
        var content1: String
        
        var body: some View {
            let shape = RoundedRectangle(cornerRadius: 10)
            
            ZStack {
                shape.frame(width: 350, height: 65)
                
                HStack(spacing: 175) {
                    Text(content).bold().foregroundColor(.black).font(.title3)
                    Text(content1).bold().foregroundColor(.black).font(.title3)
                }
            }.foregroundColor(.white)
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomeContentView()
            
        }
    }
}
