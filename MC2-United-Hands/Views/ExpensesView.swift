//
//  ExpensesView.swift
//  MC2-United-Hands
//
//  Created by Priskilla Adriani on 24/06/23.
//

import SwiftUI

struct ExpensesView: View {
    var width: CGFloat
    var height: CGFloat
    @Binding var pageNavigator: PageNavigation
    @Binding var totalExpenses: Int
    @State var expensesVM = ExpensesViewModel()
    @Binding var isDetailExpenses: Bool
    
    var body: some View {
        VStack {
            if totalExpenses == 0 {
                EmptyExpenseView(height: height)
            }
            else {
                TopBarView(width: width, height: height, date: expensesVM.dateInterval(), pageNavigator: $pageNavigator, totalExpenses: $totalExpenses)
                ExpenseContent(isDetailExpenses: $isDetailExpenses)
                    .padding()
                Spacer()
            }
        }
    }
}

struct ExpensesView_Preview : PreviewProvider{
    static var previews: some View {
        ExpensesView(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, pageNavigator: .constant(.expenses), totalExpenses: .constant(10), isDetailExpenses: .constant(false))
    }
    
    
}
