//
//  ListView.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 07/03/2022.
//

import SwiftUI
import Combine

struct ListView: View {
    
    @StateObject var viewModel = ListViewModel()
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.lottieList) { viewModel in
                RowView(viewModel: RowViewModel(url: URL(string: viewModel.lottieURL)!))
            }
        }
        .onAppear {
            viewModel.fetchAnimations()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
