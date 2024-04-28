// Created by Enes UTKU

import SwiftUI

struct VideoLayoutView: View {
    var body: some View {
        VStack {
            ForEach(0..<6) { video in
                VStack(spacing: 5) {
                       ForEach(0..<2) { row in
                           HStack(spacing: 5) {
                               ForEach(0..<2) { column in
                                   Rectangle()
                                       .foregroundColor(.gray.opacity(0.3))
                                       .aspectRatio(1, contentMode: .fill)
                                       .frame(maxWidth: .infinity)
                                       .cornerRadius(3)
                               }
                           }
                       }
                   }
                   .padding(.horizontal)
            }
        }
    }
}

#Preview {
    VideoLayoutView()
}
