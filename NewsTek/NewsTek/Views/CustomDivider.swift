//
//  CustomDivider.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 21/01/24.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .frame(height: 2)
            .padding(.vertical)
            .background(Color.clear)
    }
}

#Preview {
    CustomDivider()
}
