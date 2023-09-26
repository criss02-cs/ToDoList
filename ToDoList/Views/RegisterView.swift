//
//  RegisterView.swift
//  ToDoList
//
//  Created by GBdev on 26/09/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       backgroundColor: .orange)
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(
                    title: "Create Account",
                    background: .green) {
                        viewModel.register()
                }
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}