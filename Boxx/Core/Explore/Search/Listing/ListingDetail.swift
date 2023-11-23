//
//  ListingDetail.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import SwiftUI

struct ListingDetail: View {
    var images = [
        "Listing1",
        "Listing",
    ]
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            ZStack(alignment:.topLeading ){
                ListingImageCouruselview()
                .frame(height: 320)
                
                Button{
                    dismiss()
                }  label: { Image(systemName:"chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(50)
                }
            }
            VStack(alignment: .leading, spacing: 8){
                Text("Из: Санкт-Петербурга ")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.8")
                        Text(" - " )
                        
                        Text("23 отзыва")
                            .underline()
                            .fontWeight(.semibold)
                        
                        
                    }
                    .foregroundColor(.black )
                    Text("В Мурманск ")
                    
                }                    .font(.caption)
                
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack{
                VStack(alignment: .leading, spacing: 4 ){
                    Text("Данное предложение размещено Петуховой Светой")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading )
                    
                    HStack(spacing: 2 ){
                        Text("6 - S|")
                        Text("4 - M|")
                        Text("2 - L|")
                        Text("1 - XL")
                        
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading )
                Spacer()
                
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            //Lisint features
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0..<2){feature in
                    HStack(spacing: 12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading)
                        {
                            Text("Супер")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Данный пользователь пользуется отличной репутацией")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                        Spacer()
                    }
                }
            }
            //
            .padding()
            
            Divider()
            
            //killograms
            
            VStack(alignment: .leading, spacing: 16){
                Text("Какой размер посылки?")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(1..<21){ bedroom in VStack{
                            Image(systemName: "shippingbox")
                            Text("KG \(bedroom)")
                            
                        }
                        .frame(width: 132, height: 100)
                        .overlay {Rectangle()
                                .stroke(lineWidth:0.5)
                                .foregroundStyle(Color(.systemGray2))
                                .shadow(color: .black.opacity(0.4), radius: 5)
                        }
                            
                        }
                    }
                } .padding()
            }
            .padding()
            
            Divider()
            // list amenities
            VStack(alignment: . leading, spacing: 16){
                Text("offers")
                    .font(.headline)
                ForEach(1..<5) {feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                        
                    }
                }
               
            } .padding()
               


        }
        .toolbar(.hidden, for:  .tabBar)
        .edgesIgnoringSafeArea(.all)
        .padding(.bottom, 70)
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        Text("1000 руб.")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Цена за кг.")
                            .font(.footnote)
                        Text("15 октября")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .underline()


                    }
                    Spacer()
                    Button{
                    } label: {
                        Text ("Отправить")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40 )
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                     }
                } .padding(.horizontal, 32)
            } .background(.white)
        }

        }
        
        }
        



struct ListingDetail_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetail()
    }
}
