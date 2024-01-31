//
//  SearchView.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 20/01/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchBarText: String = String()
    var body: some View {
        VStack {
            SearchBarView(searchBarText: $searchBarText)
            Spacer()
        }
    }
}

#Preview {
    SearchView()
}
