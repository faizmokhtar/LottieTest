//
//  RowView.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 08/03/2022.
//

import SwiftUI
import Combine

struct RowView: View {    
    @ObservedObject var viewModel: RowViewModel
    
    init(viewModel: RowViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            RemoteLottieView(animation: $viewModel.animation)
                .frame(height: 200)
            Text("Dummy text")
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(viewModel: RowViewModel(url: URL(string: "")!))
    }
}
