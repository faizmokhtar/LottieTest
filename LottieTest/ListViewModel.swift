//
//  ListViewModel.swift
//  LottieTest
//
//  Created by AD0502-ADE-MB-1 on 07/03/2022.
//

import Foundation
import Combine

class ListViewModel: ObservableObject {
    
    private var cancellables = Set<AnyCancellable>()
    
    @Published var lottieList = [RemoteLottieViewModel]()
    
    init() {}
    
    func fetchAnimations() {
        LottieAPI.shared.fetchLottieAnimations()
            .map({ $0.data.featured.results })
            .map({ $0.map{ RemoteLottieViewModel(result: $0)} })
            .receive(on: RunLoop.main)
            .sink { completion in
                print(completion)
            } receiveValue: { [weak self] response in
                guard let self = self else { return }
                print(response)
                self.lottieList = response
            }
            .store(in: &cancellables)
    }
}
