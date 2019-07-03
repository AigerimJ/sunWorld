<<<<<<< HEAD
/*
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
/** @file FIRUserInfo.h
    @brief Firebase Auth SDK
    @copyright Copyright 2015 Google Inc.
    @remarks Use of this SDK is subject to the Google APIs Terms of Service:
        https://developers.google.com/terms/
>>>>>>> 709af5596380714c95f70c131124c9c363840824
 */

#import <Foundation/Foundation.h>

<<<<<<< HEAD
#import "FIRAuthSwiftNameSupport.h"

=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824
NS_ASSUME_NONNULL_BEGIN

/**
    @brief Represents user data returned from an identity provider.
 */
<<<<<<< HEAD
FIR_SWIFT_NAME(UserInfo)
=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824
@protocol FIRUserInfo <NSObject>

/** @property providerID
    @brief The provider identifier.
 */
@property(nonatomic, copy, readonly) NSString *providerID;

/** @property uid
    @brief The provider's user ID for the user.
 */
@property(nonatomic, copy, readonly) NSString *uid;

/** @property displayName
    @brief The name of the user.
 */
@property(nonatomic, copy, readonly, nullable) NSString *displayName;

/** @property photoURL
    @brief The URL of the user's profile photo.
 */
@property(nonatomic, copy, readonly, nullable) NSURL *photoURL;

/** @property email
    @brief The user's email address.
 */
@property(nonatomic, copy, readonly, nullable) NSString *email;

<<<<<<< HEAD
/** @property phoneNumber
    @brief A phone number associated with the user.
    @remarks This property is only available for users authenticated via phone number auth.
 */
@property(nonatomic, readonly, nullable) NSString *phoneNumber;

=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824
@end

NS_ASSUME_NONNULL_END
