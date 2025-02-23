//
//  ContentView.swift
//  Apple-FrameWorks
//
//  Created by Divya on 23/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FrameworkViewModel()
    var columns : [GridItem]  = [GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible())
                               
    ]
    var body: some View {
        NavigationView {
            ScrollView{
                Spacer()
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ frameWork in
                        FrameworkTitleView(frameWork: frameWork)
                            .onTapGesture {
                                viewModel.selctedFramework = frameWork
                            }
                    }
                }
                
            }
            .navigationTitle("FrameWorks")
        }
       
        .sheet(isPresented: $viewModel.isShowingDetailPage, content: {
            FrameWorkDetails(isShowingDetailPage: $viewModel.isShowingDetailPage, passedFrameWork:viewModel.selctedFramework ?? MockData.sampleFramework)
    })
    
//        Spacer()
    }
}

#Preview {
    ContentView()
}
struct FrameworkTitleView: View {
    var frameWork : FrameworkModel
    var body: some View {
        VStack{
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 80, height:80)
            Text (frameWork.name)
                .font(.subheadline)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }
    }
}
