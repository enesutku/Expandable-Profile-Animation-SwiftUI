// Created by Enes UTKU

import SwiftUI

struct ExpandedProfileView: View {
    
    @Binding var isExpanded: Bool
    @Namespace private var profileAnimation
    
    var body: some View {
        VStack {
        ProfileImageView(isExpanded: $isExpanded)
                .matchedGeometryEffect(id: "Profile", in: profileAnimation)
                .frame(width: 130, height: 130)
            
            VStack {
                Text("Example User")
                    .font(.title).bold()
                    .matchedGeometryEffect(id: "Name", in: profileAnimation)
                Text("@example")
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 8)
                    .matchedGeometryEffect(id: "Username", in: profileAnimation)
                Text("Welcome to the expanded profile view! This isn't just any ordinary profile; it's a window into the depths of your personality and your interests.")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .matchedGeometryEffect(id: "Desc", in: profileAnimation)
            }
        }
        .padding()
    }
}

#Preview {
    ExpandedProfileView(isExpanded: .constant(false))
}
