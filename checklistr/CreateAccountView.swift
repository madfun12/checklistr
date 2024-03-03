//
//  CreateAccountView.swift
//  checklistr
//
//  Created by Madison Funderburk on 3/2/24.
//

import SwiftUI
import FirebaseAuth

struct CreateAccountView: View {
    @Binding var isAuthenticated: Bool
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String = ""
    
    var body: some View {
            VStack{
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Text(errorMessage)
                    .foregroundColor(.red)
                Button("Create Account"){
                    createAccount()
                }
            }
        
    }
    
    func createAccount() {
        print("Create account clicked")
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            print("Creating an account")
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                // Authentication successful, navigate to next screen or perform desired action
                isAuthenticated = true
                print(isAuthenticated)
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView(isAuthenticated: .constant(false))
    }
}
