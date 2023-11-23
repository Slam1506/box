//
//  Profile.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import SwiftUI

struct Profile: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        if let user = viewModel.currentUser{
            VStack{
                //header
                VStack{
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 80))
                        .foregroundColor(Color(.systemGray4))
                        .clipShape(Circle())
                    
                    Text (user.login)
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text (user.fullname)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text(user.email)
                        . font (.footnote)
                        . accentColor(.gray)
                }
                
                List{
                    Section{
                        ForEach(SettingOptionViewModel.allCases) {
                            option in
                            HStack{
                                Image(systemName: option.imageNmae)
                                    .font(.system(size: 20))
                                    .foregroundColor(option.imageBackgroundColor)
                                Text (option.title)
                            }
                            
                        }
                    }
                    Section{
                        Button(action: {
                            viewModel.signOut()
                        }) {
                            Text("Поддержка")}
                    }
                    Section{
                        Button(action: {viewModel.signOut()}){
                            Text("Выход")}
                    }
                    
                    .foregroundColor(.red)
                }
            }
        }
    }
}


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
