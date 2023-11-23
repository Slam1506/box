//
//  Inbox.swift
//  Boxx
//
//  Created by Nikita Larin on 17.11.2023.
//

import SwiftUI

struct Inbox: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                Text("")
                
                List{
                    ForEach (0 ... 10, id: \.self) { message in
                       InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height:UIScreen.main.bounds.height - 120)
                
            }
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        HStack{
                            Image(systemName: "person.circle.fill")
                            
                            Text("Чат")
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing)
                    {
                        
                    }
                }
            }
        }
}    

struct Inbox_Previews: PreviewProvider {
    static var previews: some View {
        Inbox()
    }
}
