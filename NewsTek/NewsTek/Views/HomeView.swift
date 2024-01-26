//
//  HomeView.swift
//  NewsTek
//
//  Created by Shivsagar S Wagle on 20/01/24.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel(newsResource: NewsResource())
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.viewModel.news.articles ?? [], id: \.id) { article in
                    Section {
                        ZStack {
                            NavigationLink(destination: NewsDetails(article: article)) {
                                EmptyView()
                            }
                            NewsRow(article: article)
                        }
                        
                    }
                    CustomDivider()
                       
                   

                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.gray.opacity(0.05))
            .listSectionSpacing(5)
            .scrollIndicators(.hidden)
            .navigationTitle("NewsTek")
            
        }
        .onAppear(perform: {
            self.viewModel.getNews()
        })
        
    }
        
        
}

#Preview {
    HomeView()
}
