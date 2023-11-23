//
//  MainTabBar.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView{
            MainSearch()
                .tag("1")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
           Search()
                .tag("2")
                .tabItem {
                    Image(systemName: "plus.circle")
                
                }
            (
                Inbox()
            )
            .tag("3")
            .tabItem {
                Image(systemName: "message")
            }
            Profile()
                .tag("4")
                .tabItem {
                    Image(systemName: "person")
                }
            
        }
        
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
