//
//  HomeView.swift
//  MC2-United-Hands
//
//  Created by Priskilla Adriani on 23/06/23.
//

import SwiftUI

struct HomeView: View {
    var width: CGFloat
    var height: CGFloat
    @Binding var pageNavigator : PageNavigation
    @State var date = Date.now
    @State var totalExpenses: Int = 4000000
    @EnvironmentObject var sheetManager: SheetManager
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                if pageNavigator == .expenses{
                    //TODO: Expense View
                    ExpensesView(width: width, height: height, pageNavigator: $pageNavigator, totalExpenses: $totalExpenses)
                        .frame(width: width, height: height * 0.9)
                }
                else{
                    //TODO: Report View
                    ReportView(width: width, height: height, date: date, pageNavigator: $pageNavigator, totalExpenses: $totalExpenses)
                        .frame(width: width, height: height * 0.9)
                }

                TabBarView(width: width, height: height, pageNavigator: $pageNavigator)
            }
            .frame(width: width, height: height)
            
            if sheetManager.action.isPresented {
                DatePickerView(width: width, height: height, date: $date)
            }
        }
    }
}