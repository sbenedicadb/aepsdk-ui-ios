/*
 Copyright 2024 Adobe. All rights reserved.
 This file is licensed to you under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License. You may obtain a copy
 of the License at http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software distributed under
 the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
 OF ANY KIND, either express or implied. See the License for the specific language
 governing permissions and limitations under the License.
 */

import SwiftUI

/// A view that displays an button based on the provided `AEPButton` model.
public struct AEPButtonView: View {
    /// The model containing the data about the button.
    @ObservedObject public var model: AEPButton

    /// Initializes a new instance of `AEPButtonView` with the provided model
    public init(model: AEPButton) {
        self.model = model
    }

    /// The body of the view
    public var body: some View {
        Button(action: {
            // TODO: A handler will be passed to model class
            // eg: model.handler.handleButtonClick(_id : model.interactId)
        }, label: {
            model.text.view
        })
    }
}