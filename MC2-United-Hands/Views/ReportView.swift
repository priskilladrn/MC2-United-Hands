//
//  ReportView.swift
//  MC2-United-Hands
//
//  Created by Priskilla Adriani on 24/06/23.
//

import SwiftUI

struct ReportView: View {
    var width: CGFloat
    var height: CGFloat
    var date: Date
    
    @Binding var pageNavigator: PageNavigation
    @Binding var isDatePicker: Bool
    @Binding var totalExpenses: Int
    
    var body: some View {
        VStack {
            TopBarView(width: width, height: height, date: Formatter.monthFormatter.string(from: date), pageNavigator: $pageNavigator, isDatePicker: $isDatePicker, totalExpenses: $totalExpenses)
            Spacer()
        }
    }
}
struct ReportView_Previews : PreviewProvider{
    static var previews: some View{
        ReportView(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, pageNavigator: .constant(.expenses), userName: .constant(""), isDatePicker: .constant(false), totalExpenses: .constant(0))
    }
}
