//
//  NetRequestPriority.swift
//  NRKit
//
//  Created by Kirill Averkiev on 18.04.16.
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

import Foundation

/// Priority of the request.
public enum NetRequestPriority: Int {
    
    /// The request is a background task.
    case background = 0
    
    /// User-initiated not important request, that can not be done in background.
    case low = 1
    
    /// The standart user-initiated request.
    case medium = 2
    
    /// Important UI-request.
    case high = 3
    
}
