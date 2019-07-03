/*
<<<<<<< HEAD
 * Copyright 2017 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
=======
 * Firebase iOS Client Library
 *
 * Copyright © 2013 Firebase - All Rights Reserved
 * https://www.firebase.com
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binaryform must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY FIREBASE AS IS AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
 * EVENT SHALL FIREBASE BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
>>>>>>> 709af5596380714c95f70c131124c9c363840824
 */

#ifndef Firebase_FIRDataEventType_h
#define Firebase_FIRDataEventType_h

<<<<<<< HEAD
#import <Foundation/Foundation.h>
#import "FIRDatabaseSwiftNameSupport.h"

=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824
/**
 * This enum is the set of events that you can observe at a Firebase Database location.
 */
typedef NS_ENUM(NSInteger, FIRDataEventType) {
    /// A new child node is added to a location.
    FIRDataEventTypeChildAdded,
    /// A child node is removed from a location.
    FIRDataEventTypeChildRemoved,
    /// A child node at a location changes.
    FIRDataEventTypeChildChanged,
    /// A child node moves relative to the other child nodes at a location.
    FIRDataEventTypeChildMoved,
    /// Any data changes at a location or, recursively, at any child node.
    FIRDataEventTypeValue
<<<<<<< HEAD
} FIR_SWIFT_NAME(DataEventType);
=======
};
>>>>>>> 709af5596380714c95f70c131124c9c363840824

#endif
