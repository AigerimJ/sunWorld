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
 */

#import <Foundation/Foundation.h>

#import "FIRCoreSwiftNameSupport.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * This class provides constant fields of Google APIs.
 */
FIR_SWIFT_NAME(FirebaseOptions)
@interface FIROptions : NSObject <NSCopying>
=======
#import <Foundation/Foundation.h>

/**
 * This class provides constant fields of Google APIs.
 */
@interface FIROptions : NSObject<NSCopying>
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * Returns the default options.
 */
<<<<<<< HEAD
+ (nullable FIROptions *)defaultOptions FIR_SWIFT_NAME(defaultOptions());
=======
+ (FIROptions *)defaultOptions;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * An iOS API key used for authenticating requests from your app, e.g.
 * @"AIzaSyDdVgKwhZl0sTTTLZ7iTmt1r3N2cJLnaDk", used to identify your app to Google servers.
 */
<<<<<<< HEAD
@property(nonatomic, copy, nullable) NSString *APIKey FIR_SWIFT_NAME(apiKey);

/**
 * The bundle ID for the application. Defaults to `[[NSBundle mainBundle] bundleID]` when not set
 * manually or in a plist.
 */
@property(nonatomic, copy) NSString *bundleID;
=======
@property(nonatomic, readonly, copy) NSString *APIKey;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * The OAuth2 client ID for iOS application used to authenticate Google users, for example
 * @"12345.apps.googleusercontent.com", used for signing in with Google.
 */
<<<<<<< HEAD
@property(nonatomic, copy, nullable) NSString *clientID;
=======
@property(nonatomic, readonly, copy) NSString *clientID;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * The tracking ID for Google Analytics, e.g. @"UA-12345678-1", used to configure Google Analytics.
 */
<<<<<<< HEAD
@property(nonatomic, copy, nullable) NSString *trackingID;
=======
@property(nonatomic, readonly, copy) NSString *trackingID;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * The Project Number from the Google Developer's console, for example @"012345678901", used to
 * configure Google Cloud Messaging.
 */
<<<<<<< HEAD
@property(nonatomic, copy) NSString *GCMSenderID FIR_SWIFT_NAME(gcmSenderID);

/**
 * The Project ID from the Firebase console, for example @"abc-xyz-123".
 */
@property(nonatomic, copy, nullable) NSString *projectID;
=======
@property(nonatomic, readonly, copy) NSString *GCMSenderID;

/**
 * The Project ID from the Firebase console, for example @"abc-xyz-123". Currently only populated
 * when using [FIROptions defaultOptions].
 */
@property(nonatomic, readonly, copy) NSString *projectID;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * The Android client ID used in Google AppInvite when an iOS app has its Android version, for
 * example @"12345.apps.googleusercontent.com".
 */
<<<<<<< HEAD
@property(nonatomic, copy, nullable) NSString *androidClientID;
=======
@property(nonatomic, readonly, copy) NSString *androidClientID;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * The Google App ID that is used to uniquely identify an instance of an app.
 */
<<<<<<< HEAD
@property(nonatomic, copy) NSString *googleAppID;
=======
@property(nonatomic, readonly, copy) NSString *googleAppID;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * The database root URL, e.g. @"http://abc-xyz-123.firebaseio.com".
 */
<<<<<<< HEAD
@property(nonatomic, copy, nullable) NSString *databaseURL;
=======
@property(nonatomic, readonly, copy) NSString *databaseURL;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * The URL scheme used to set up Durable Deep Link service.
 */
<<<<<<< HEAD
@property(nonatomic, copy, nullable) NSString *deepLinkURLScheme;
=======
@property(nonatomic, readwrite, copy) NSString *deepLinkURLScheme;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * The Google Cloud Storage bucket name, e.g. @"abc-xyz-123.storage.firebase.com".
 */
<<<<<<< HEAD
@property(nonatomic, copy, nullable) NSString *storageBucket;
=======
@property(nonatomic, readonly, copy) NSString *storageBucket;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * Initializes a customized instance of FIROptions with keys. googleAppID, bundleID and GCMSenderID
 * are required. Other keys may required for configuring specific services.
 */
- (instancetype)initWithGoogleAppID:(NSString *)googleAppID
                           bundleID:(NSString *)bundleID
                        GCMSenderID:(NSString *)GCMSenderID
                             APIKey:(NSString *)APIKey
                           clientID:(NSString *)clientID
                         trackingID:(NSString *)trackingID
                    androidClientID:(NSString *)androidClientID
                        databaseURL:(NSString *)databaseURL
                      storageBucket:(NSString *)storageBucket
<<<<<<< HEAD
                  deepLinkURLScheme:(NSString *)deepLinkURLScheme
    DEPRECATED_MSG_ATTRIBUTE(
        "Use `-[[FIROptions alloc] initWithGoogleAppID:GCMSenderID:]` "
        "(`FirebaseOptions(googleAppID:gcmSenderID:)` in Swift)` and property "
        "setters instead.");
=======
                  deepLinkURLScheme:(NSString *)deepLinkURLScheme;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * Initializes a customized instance of FIROptions from the file at the given plist file path.
 * For example,
 * NSString *filePath =
 *     [[NSBundle mainBundle] pathForResource:@"GoogleService-Info" ofType:@"plist"];
 * FIROptions *options = [[FIROptions alloc] initWithContentsOfFile:filePath];
 * Returns nil if the plist file does not exist or is invalid.
 */
<<<<<<< HEAD
- (nullable instancetype)initWithContentsOfFile:(NSString *)plistPath;

/**
 * Initializes a customized instance of FIROptions with required fields. Use the mutable properties
 * to modify fields for configuring specific services.
 */
// clang-format off
- (instancetype)initWithGoogleAppID:(NSString *)googleAppID
                        GCMSenderID:(NSString *)GCMSenderID
    FIR_SWIFT_NAME(init(googleAppID:gcmSenderID:));
// clang-format on

@end

NS_ASSUME_NONNULL_END
=======
- (instancetype)initWithContentsOfFile:(NSString *)plistPath;

@end
>>>>>>> 709af5596380714c95f70c131124c9c363840824
