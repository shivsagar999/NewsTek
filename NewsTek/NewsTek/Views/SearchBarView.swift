//
//  SearchBarView.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 31/01/24.
//

import SwiftUI

struct SearchBarView: UIViewRepresentable {
    
    typealias UIViewType = UISearchBar
    
    @Binding var searchBarText: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        @Binding var searchBarValue: String
        
        init(searchBarValue: Binding<String>) {
            _searchBarValue = searchBarValue
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            searchBarValue = searchText
        }
        
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(searchBarValue: $searchBarText )
    }
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.searchBarStyle = .minimal
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = searchBarText
    }
   
}

#Preview {
    SearchBarView(searchBarText: .constant("shiv"))
}
