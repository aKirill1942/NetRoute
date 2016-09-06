//
//  NetRouteTests.swift
//  NetRouteTests
//
//  Created by Kirill Averkiev on 25.04.16.
//  Copyright © 2016 Kirill Averkiev. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import XCTest
@testable import NetRoute

class NetRouteTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let expectation = self.expectation(description: "Asyncronious operation")
    
        let request = NetRequest(url: URL(string: "http://api.goforit.pro/User/Reg")!, type: .POST, parameters: ["login": "aKirill", "password": "ucpass", "email": "k.averkiv@goforit.pro", "dev_key": "wqxUY3nQMPq6YjIW", "server_name": "GOFORIT"])
        
        request.run() { response in
            print(response)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 30.0, handler: nil)
    }
    
}
