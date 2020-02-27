//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Gabrielle Good on 2/27/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $userData.showFavoritesOnly){
                    Text("Show Favorites only")
                }
                ForEach(userData.landmarkData) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)
                            .wnvironmentObject(self.userData)
                        )
                        {
                               LandmarkRow(landmark: landmark)

            }
        }
    }
            
            } .navigationBarTitle(Text("Landmarks"))
        }
    }
}
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self){deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName(deviceName)
    }
}
}

