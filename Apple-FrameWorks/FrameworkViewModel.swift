//
//  FrameworkViewModel.swift
//  Apple-FrameWorks
//
//  Created by Divya on 23/02/25.
//

import Foundation
final class FrameworkViewModel: ObservableObject {
    var selctedFramework : FrameworkModel? {
        didSet {
            isShowingDetailPage = true
        }
    }
    @Published var  isShowingDetailPage  = false
}
