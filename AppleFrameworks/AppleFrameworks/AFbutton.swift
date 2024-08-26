//
//  AFbutton.swift
//  AppleFrameworks
//
//  Created by Utsav  on 20/08/24.
//

import SwiftUI

struct AFbutton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .frame(width: 200,height: 50)
            .fontWeight(.semibold)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .background(Color.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFbutton(title: "Test Title")
}
