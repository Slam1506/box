//
//  ListingitemView.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import SwiftUI

struct ListingitemView: View {
    var images = [
        "Listing1",
        "Listing",
    ]
    var body: some View {
        ZStack(alignment: .top){
            HStack{
                
                
                VStack(spacing: 8){
                    
                    //Images
                    ListingImageCouruselview()
                        .frame(height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                     //details
                    HStack(alignment: .top ){
                        VStack(alignment: .leading){
                            HStack{
                                Text("Из:")
                                    .fontWeight(.semibold)
                                
                                VStack{
                                    Text("Санкт-Петерубрга")
                                        .fontWeight(.semibold)
                                    
                                }}
                            HStack{
                                Text("20.11.23 на")
                                    .foregroundStyle(.gray)
                                Text("Поезде")
                                    .foregroundStyle(.gray)
                            }
                            HStack{
                                Text("1000 руб. ")
                                    .fontWeight(.semibold)
                            }
                        }
                        Spacer()
                        
                        //rating
                        
                        HStack(spacing: 2){
                            Image(systemName: "star.fill")
                            Text("4.8")
                        }
                        
                        
                    }.font(.footnote)
                }
                .padding( )
            }
            .background(Color(.systemGray6))
            HStack{
                
                Text("")
                .frame(height: 10)
                .padding(.horizontal, 70)
                .padding(.vertical)
                .overlay {Rectangle()
                        .stroke(lineWidth:1)
                        .background(Color(.systemGray6))
                        .shadow(color: .black.opacity(3), radius: 2)
                    Text("Мурманск")
                }
                }
        }
    }
    
}


struct ListingitemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingitemView()
    }
}
