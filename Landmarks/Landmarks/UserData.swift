//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Gabrielle Good on 2/27/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}


