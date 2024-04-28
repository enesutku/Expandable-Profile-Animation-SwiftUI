// Created by Enes UTKU

import SwiftUI

struct ContentView: View {
    
    @State var isExpanded = false
    
    var body: some View {
        VStack {
            ScrollView {
                if isExpanded {
                    ExpandedProfileView(isExpanded: $isExpanded).padding(.bottom)
                } else {
                    MainProfileView(isExpanded: $isExpanded)
                }
                VideoLayoutView()
            }
        }
    }

}

#Preview {
    ContentView()
}
