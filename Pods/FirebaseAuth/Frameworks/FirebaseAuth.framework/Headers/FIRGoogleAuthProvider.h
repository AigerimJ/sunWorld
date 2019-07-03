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
/** @file FIRGoogleAuthProvider.h
    @brief Firebase Auth SDK
    @copyright Copyright 2016 Google Inc.
    @remarks Use of this SDK is subject to the Google APIs Terms of Service:
        https://developers.google.com/terms/
>>>>>>> 709af5596380714c95f70c131124c9c363840824
 */

#import <Foundation/Foundation.h>

<<<<<<< HEAD
#import "FIRAuthSwiftNameSupport.h"

=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824
@class FIRAuthCredential;

NS_ASSUME_NONNULL_BEGIN

/**
    @brief A string constant identifying the Google identity provider.
 */
<<<<<<< HEAD
extern NSString *const FIRGoogleAuthProviderID FIR_SWIFT_NAME(GoogleAuthProviderID);
=======
extern NSString *const FIRGoogleAuthProviderID;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/** @class FIRGoogleAuthProvider
    @brief Utility class for constructing Google Sign In credentials.
 */
<<<<<<< HEAD
FIR_SWIFT_NAME(GoogleAuthProvider)
=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824
@interface FIRGoogleAuthProvider : NSObject

/** @fn credentialWithIDToken:accessToken:
    @brief Creates an @c FIRAuthCredential for a Google sign in.

    @param IDToken The ID Token from Google.
    @param accessToken The Access Token from Google.
    @return A FIRAuthCredential containing the Google credentials.
 */
+ (FIRAuthCredential *)credentialWithIDToken:(NSString *)IDToken
                                 accessToken:(NSString *)accessToken;

/** @fn init
    @brief This class should not be initialized.
 */
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
