//
//  PageView.swift
//  SmartTimer
//
//  Created by Andrew on 15.06.2019.
//  Copyright © 2019 Andrew Lisogor. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
  var viewControllers: [UIHostingController<Page>]
 
  @State var currentPage = 0
  
  
  init(_ views: [Page]) {
    self.viewControllers = views.map { UIHostingController(rootView: $0) }
  }
  
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      
      PageViewController(controllers: viewControllers, currentPage: $currentPage)
      
      PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
        .padding(.trailing)
      
    }
  }
}

#if DEBUG
struct PageView_Previews: PreviewProvider {
  static var previews: some View {
    
    PageView(arrayOfViews).frame(width: 380.0, height: 200.0)
    
    //features.map { FeatureCard(landmark:. $0) }
  }
}
#endif
