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

#import <Foundation/Foundation.h>
#import "FIRDatabaseReference.h"
<<<<<<< HEAD
#import "FIRDatabaseSwiftNameSupport.h"
=======
>>>>>>> 709af5596380714c95f70c131124c9c363840824

@class FIRApp;

NS_ASSUME_NONNULL_BEGIN

/**
 * The entry point for accessing a Firebase Database.  You can get an instance by calling
 * [FIRDatabase database]. To access a location in the database and read or write data,
 * use [FIRDatabase reference].
 */
<<<<<<< HEAD
FIR_SWIFT_NAME(Database)
@interface FIRDatabase : NSObject

/**
 * The NSObject initializer that has been marked as unavailable. Use the `database`
 * method instead
 *
 * @return An instancetype instance
*/
+ (instancetype) init __attribute__((unavailable("use the database method instead")));

/**
=======
@interface FIRDatabase : NSObject

/**
>>>>>>> 709af5596380714c95f70c131124c9c363840824
 * Gets the instance of FIRDatabase for the default FIRApp.
 *
 * @return A FIRDatabase instance.
 */
<<<<<<< HEAD
+ (FIRDatabase *) database FIR_SWIFT_NAME(database());
=======
+ (FIRDatabase *) database NS_SWIFT_NAME(database());
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * Gets an instance of FIRDatabase for a specific FIRApp.
 *
 * @param app The FIRApp to get a FIRDatabase for.
 * @return A FIRDatabase instance.
 */
<<<<<<< HEAD
+ (FIRDatabase *) databaseForApp:(FIRApp *)app FIR_SWIFT_NAME(database(app:));
=======
+ (FIRDatabase *) databaseForApp:(FIRApp*)app NS_SWIFT_NAME(database(app:));
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/** The FIRApp instance to which this FIRDatabase belongs. */
@property (weak, readonly, nonatomic) FIRApp *app;

/**
 * Gets a FIRDatabaseReference for the root of your Firebase Database.
 */
- (FIRDatabaseReference *) reference;

/**
 * Gets a FIRDatabaseReference for the provided path.
 *
 * @param path Path to a location in your Firebase Database.
 * @return A FIRDatabaseReference pointing to the specified path.
 */
- (FIRDatabaseReference *) referenceWithPath:(NSString *)path;

/**
 * Gets a FIRDatabaseReference for the provided URL.  The URL must be a URL to a path
 * within this Firebase Database.  To create a FIRDatabaseReference to a different database,
 * create a FIRApp} with a FIROptions object configured with the appropriate database URL.
 *
<<<<<<< HEAD
 * @param databaseUrl A URL to a path within your database.
=======
 * @param url A URL to a path within your database.
>>>>>>> 709af5596380714c95f70c131124c9c363840824
 * @return A FIRDatabaseReference for the provided URL.
*/
- (FIRDatabaseReference *) referenceFromURL:(NSString *)databaseUrl;

/**
 * The Firebase Database client automatically queues writes and sends them to the server at the earliest opportunity,
 * depending on network connectivity.  In some cases (e.g. offline usage) there may be a large number of writes
 * waiting to be sent. Calling this method will purge all outstanding writes so they are abandoned.
 *
 * All writes will be purged, including transactions and onDisconnect writes.  The writes will
 * be rolled back locally, perhaps triggering events for affected event listeners, and the client will not
 * (re-)send them to the Firebase Database backend.
 */
- (void)purgeOutstandingWrites;

/**
 * Shuts down our connection to the Firebase Database backend until goOnline is called.
 */
- (void)goOffline;

/**
 * Resumes our connection to the Firebase Database backend after a previous goOffline call.
 */
- (void)goOnline;

/**
 * The Firebase Database client will cache synchronized data and keep track of all writes you've
 * initiated while your application is running. It seamlessly handles intermittent network
 * connections and re-sends write operations when the network connection is restored.
 *
 * However by default your write operations and cached data are only stored in-memory and will
 * be lost when your app restarts.  By setting this value to `YES`, the data will be persisted
 * to on-device (disk) storage and will thus be available again when the app is restarted
 * (even when there is no network connectivity at that time). Note that this property must be
 * set before creating your first Database reference and only needs to be called once per
 * application.
 *
 */
<<<<<<< HEAD
@property (nonatomic) BOOL persistenceEnabled FIR_SWIFT_NAME(isPersistenceEnabled);
=======
@property (nonatomic) BOOL persistenceEnabled;
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/**
 * By default the Firebase Database client will use up to 10MB of disk space to cache data. If the cache grows beyond
 * this size, the client will start removing data that hasn't been recently used. If you find that your application
 * caches too little or too much data, call this method to change the cache size. This property must be set before
 * creating your first FIRDatabaseReference and only needs to be called once per application.
 *
 * Note that the specified cache size is only an approximation and the size on disk may temporarily exceed it
 * at times. Cache sizes smaller than 1 MB or greater than 100 MB are not supported.
 */
@property (nonatomic) NSUInteger persistenceCacheSizeBytes;

/**
 * Sets the dispatch queue on which all events are raised. The default queue is the main queue.
 *
 * Note that this must be set before creating your first Database reference.
 */
@property (nonatomic, strong) dispatch_queue_t callbackQueue;

/**
 * Enables verbose diagnostic logging.
 *
 * @param enabled YES to enable logging, NO to disable.
 */
+ (void) setLoggingEnabled:(BOOL)enabled;

/** Retrieve the Firebase Database SDK version. */
+ (NSString *) sdkVersion;

@end

NS_ASSUME_NONNULL_END
