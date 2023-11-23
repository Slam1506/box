//
//  MainSearch.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import SwiftUI

struct MainSearch: View {
    @State private  var showDestinationSearchView = false
    var body: some View {
        NavigationStack{
            if showDestinationSearchView{
                DestinationSearchView (show: $showDestinationSearchView)
            } else{
                
                ScrollView{
                    LazyVStack(spacing: 10){
                        SearchAndFilter()
                            .onTapGesture {
                                withAnimation{
                                    showDestinationSearchView.toggle()
                                }
                            }
                        ForEach(0 ... 8, id: \.self) {listing in NavigationLink(value: listing){ ListingitemView()}
                                .frame(height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }}
                }
             .navigationDestination(for: Int.self){ listing in
ListingDetail()
                .navigationBarBackButtonHidden()
            }
            }
            
      
                
        }
    }
}

struct MainSearch_Previews: PreviewProvider {
    static var previews: some View {
        MainSearch()
    }
}
