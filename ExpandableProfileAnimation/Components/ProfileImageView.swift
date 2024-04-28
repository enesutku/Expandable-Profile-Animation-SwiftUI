// Created by Enes UTKU

import SwiftUI

struct ProfileImageView: View {
    
    @Binding var isExpanded: Bool
    
    var body: some View {
        Image("profile")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                isExpanded.toggle()
            }
            }
    }
}

#Preview {
    ProfileImageView(isExpanded: .constant(false))
}
