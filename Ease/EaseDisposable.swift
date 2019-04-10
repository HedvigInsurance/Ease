//
//  EaseDisposable.swift
//  Ease
//
//  Created by Gustaf Gunér on 2019-04-10.
//  Copyright © 2019 Gustaf Gunér. All rights reserved.
//

import Foundation

public typealias EaseDisposal = [EaseDisposable]

public final class EaseDisposable {
    
    private let dispose: () -> ()
    
    init(_ dispose: @escaping () -> ()) {
        self.dispose = dispose
    }
    
    deinit {
        dispose()
    }
    
    public func add(to disposal: inout EaseDisposal) {
        disposal.append(self)
    }
}
