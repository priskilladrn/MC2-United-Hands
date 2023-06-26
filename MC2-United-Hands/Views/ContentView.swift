//
//  ContentView.swift
//  MC2-United-Hands
//
//  Created by Leonard Theodorus on 22/06/23.
//

import SwiftUI
struct ContentView: View {
    @State var pageNavigator : PageNavigation = .expenses
    @EnvironmentObject var onBoardingVm : OnboardingViewModel
    var body: some View {
        //        NavigationStack{
        //            GeometryReader { geo in
        //                VStack {
        //                    HomeView(width: geo.size.width, height: geo.size.height, pageNavigator: $pageNavigator)
        //                }
        //            }
        //        }
        VStack{
            ExpensesHorizontalScrollView()
            if !onBoardingVm.firstTime{
                Text("FirstTIme")
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
