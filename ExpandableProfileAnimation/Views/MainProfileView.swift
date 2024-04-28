// Created by Enes UTKU

import SwiftUI

struct MainProfileView: View {
    
    @Binding var isExpanded: Bool
    @Namespace private var profileAnimation
    
    var body: some View {
        HStack {
            ProfileImageView(isExpanded: $isExpanded)
                .matchedGeometryEffect(id: "Profile", in: profileAnimation)
                .frame(width: 65, height: 65)
            
            VStack(alignment: .leading, content: {
                Text("Example User")
                    .matchedGeometryEffect(id: "NameAndSurname", in: profileAnimation)
                    .font(.title).bold()
                Text("@example")
                    .matchedGeometryEffect(id: "username", in: profileAnimation)
                    .font(.callout)
                    .foregroundStyle(.secondary)
            })
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MainProfileView(isExpanded: .constant(false))
}
