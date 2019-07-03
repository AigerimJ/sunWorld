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
/** @file FIRGitHubAuthProvider.h
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
    @brief A string constant identifying the GitHub identity provider.
 */
<<<<<<< HEAD
extern NSString *const FIRGitHubAuthProviderID FIR_SWIFT_NAME(GitHubAuthProviderID);
=======
extern NSString *const FIRGitHubAuthProviderID;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/** @class FIRGitHubAuthProvider
    @brief Utility class for constructing GitHub credentials.
 */
<<<<<<< HEAD
FIR_SWIFT_NAME(GitHubAuthProvider)
=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824
@interface FIRGitHubAuthProvider : NSObject

/** @fn credentialWithToken:
    @brief Creates an @c FIRAuthCredential for a GitHub sign in.

    @param token The GitHub OAuth access token.
    @return A FIRAuthCredential containing the GitHub credential.
 */
+ (FIRAuthCredential *)credentialWithToken:(NSString *)token;

/** @fn init
    @brief This class is not meant to be initialized.
 */
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
