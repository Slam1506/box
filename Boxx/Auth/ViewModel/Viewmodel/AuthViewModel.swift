//
//  AuthViewModel.swift
//  Boxx
//
//  Created by Nikita Larin on 16.11.2023.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift
import FirebaseAuth

protocol AuthenticationFormProtocol{
    var formIsVolid: Bool {get}
}


@MainActor
class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        Task{
            await fetchUser()
        }
    }
    func signIn (withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            await fetchUser()

        } catch {
            print("БАГ, ошибка логина \(error.localizedDescription)")

        }
    }
    func createUser(withEmail email:String, password: String, fullname: String, login: String) async throws{
        do{
            let result = try await Auth.auth() . createUser(withEmail: email, password: password)
            self.userSession = result.user
            let user = User (id: result.user.uid, fullname: fullname, login: login, email: email)
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
            await fetchUser()

        } catch {
            print("БАГ, ошибка \(error.localizedDescription)")
        }

    }
    func signOut() {
        do{
            try Auth.auth().signOut() //выходбек
            self.userSession = nil
            self.currentUser = nil
        } catch {
            print("bags \(error.localizedDescription)")
        }
    }
    func deleteAccount ( ) {
    }
    func fetchUser () async {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else {return}
        self.currentUser = try? snapshot.data(as: User.self)
    }
}
