//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Utsav  on 20/08/24.
//

import Foundation
final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
