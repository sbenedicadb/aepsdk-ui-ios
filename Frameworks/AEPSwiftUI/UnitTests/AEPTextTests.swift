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

import XCTest
@testable import AEPSwiftUI

final class AEPTextTests: XCTestCase {
    
    func testInit_ValidData() {
        // setup
        let data = [Constants.CardTemplate.UIElement.Text.CONTENT: "Text Content"]
        
        // test
        let textElement = AEPText(data)
        
        // verify
        XCTAssertNotNil(textElement)
        XCTAssertEqual(textElement?.content, "Text Content")
        XCTAssertNil(textElement?.font)
        XCTAssertNil(textElement?.textColor)
    }
    
    
    func testInit_EmptyData() {
        // setup
        let data: [String: Any] = [:]
        
        // test
        let textElement = AEPText(data)
        
        // verify
        XCTAssertNil(textElement)
    }
    
    func test_viewProperty() {
        // setup
        let data = [Constants.CardTemplate.UIElement.Text.CONTENT: "Text Content"]
        
        // test
        let textElement = AEPText(data)
        
        // verify
        XCTAssertNotNil(textElement?.view)
        XCTAssertNoThrow(
            textElement?.view.body
        )
    }
    
}