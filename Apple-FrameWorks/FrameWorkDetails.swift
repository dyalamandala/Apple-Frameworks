//
//  FrameWorkDetails.swift
//  Apple-FrameWorks
//
//  Created by Divya on 23/02/25.
//

import SwiftUI

struct FrameWorkDetails: View {
    @Binding var isShowingDetailPage: Bool
    var passedFrameWork: FrameworkModel
    @State private var isSafariShowed: Bool = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    
                    isShowingDetailPage = false
                }label: {
                    Image(systemName: "xmark")
                        .frame(width: 44, height: 44)
                        .foregroundStyle(.black)
                    
                }
            }
            .padding()
            Spacer()
            FrameworkTitleView(frameWork: passedFrameWork)
            Text(passedFrameWork.description)
                .padding()
            Button {
                isSafariShowed = true
                
            }label: {
                Text("Learn More")
                    .frame(width: 150, height: 40)
                    .foregroundStyle(.white)
                    .background(Color.red)
                    .font(.headline)
                    .fontWeight(.bold)
                    .fontDesign(.default)
                    .cornerRadius(10)
                
            }
            Spacer()
            
        }
        .sheet(isPresented: $isSafariShowed, content: {
            SafariView(url: (URL(string: passedFrameWork.urlString) ?? URL(string:"www.apple.com"))!)
        })
    }
}

#Preview {
    FrameWorkDetails(isShowingDetailPage:.constant(false) , passedFrameWork: MockData.sampleFramework)
}
