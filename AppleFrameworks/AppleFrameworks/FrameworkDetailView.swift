//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Utsav  on 20/08/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                }
            label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .frame(width: 44, height: 44)
                
            }
            .padding()
            }
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView =  true
            }
        label: {
            AFbutton(title: "Learn More")
        }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
