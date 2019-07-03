/// @file FIRParameterNames.h
///
/// Predefined event parameter names.
///
/// Params supply information that contextualize Events. You can associate up to 25 unique Params
/// with each Event type. Some Params are suggested below for certain common Events, but you are
/// not limited to these. You may supply extra Params for suggested Events or custom Params for
/// Custom events. Param names can be up to 40 characters long, may only contain alphanumeric
/// characters and underscores ("_"), and must start with an alphabetic character. Param values can
<<<<<<< HEAD
/// be up to 100 characters long. The "firebase_", "google_", and "ga_" prefixes are reserved and
/// should not be used.

#import "FIRAnalyticsSwiftNameSupport.h"
=======
/// be up to 100 characters long. The "firebase_" prefix is reserved and should not be used.
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Game achievement ID (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterAchievementID : @"10_matches_won",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterAchievementID FIR_SWIFT_NAME(AnalyticsParameterAchievementID) =
    @"achievement_id";
=======
static NSString *const kFIRParameterAchievementID = @"achievement_id";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Ad Network Click ID (NSString). Used for network-specific click IDs which vary in format.
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterAdNetworkClickID : @"1234567",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterAdNetworkClickID
    FIR_SWIFT_NAME(AnalyticsParameterAdNetworkClickID) = @"aclid";

/// The store or affiliation from which this transaction occurred (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterAffiliation : @"Google Store",
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterAffiliation FIR_SWIFT_NAME(AnalyticsParameterAffiliation) =
    @"affiliation";
=======
static NSString *const kFIRParameterAdNetworkClickID = @"aclid";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// The individual campaign name, slogan, promo code, etc. Some networks have pre-defined macro to
/// capture campaign information, otherwise can be populated by developer. Highly Recommended
/// (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCampaign : @"winter_promotion",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterCampaign FIR_SWIFT_NAME(AnalyticsParameterCampaign) =
    @"campaign";
=======
static NSString *const kFIRParameterCampaign = @"campaign";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Character used in game (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCharacter : @"beat_boss",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterCharacter FIR_SWIFT_NAME(AnalyticsParameterCharacter) =
    @"character";

/// The checkout step (1..N) (unsigned 64-bit integer as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCheckoutStep : @"1",
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterCheckoutStep FIR_SWIFT_NAME(AnalyticsParameterCheckoutStep) =
    @"checkout_step";

/// Some option on a step in an ecommerce flow (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCheckoutOption : @"Visa",
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterCheckoutOption
    FIR_SWIFT_NAME(AnalyticsParameterCheckoutOption) = @"checkout_option";

/// Campaign content (NSString).
static NSString *const kFIRParameterContent FIR_SWIFT_NAME(AnalyticsParameterContent) = @"content";
=======
static NSString *const kFIRParameterCharacter = @"character";

/// Campaign content (NSString).
static NSString *const kFIRParameterContent = @"content";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Type of content selected (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterContentType : @"news article",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterContentType FIR_SWIFT_NAME(AnalyticsParameterContentType) =
    @"content_type";
=======
static NSString *const kFIRParameterContentType = @"content_type";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Coupon code for a purchasable item (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCoupon : @"zz123",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterCoupon FIR_SWIFT_NAME(AnalyticsParameterCoupon) = @"coupon";
=======
static NSString *const kFIRParameterCoupon = @"coupon";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Campaign custom parameter (NSString). Used as a method of capturing custom data in a campaign.
/// Use varies by network.
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCP1 : @"custom_data",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterCP1 FIR_SWIFT_NAME(AnalyticsParameterCP1) = @"cp1";

/// The name of a creative used in a promotional spot (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCreativeName : @"Summer Sale",
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterCreativeName FIR_SWIFT_NAME(AnalyticsParameterCreativeName) =
    @"creative_name";

/// The name of a creative slot (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCreativeSlot : @"summer_banner2",
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterCreativeSlot FIR_SWIFT_NAME(AnalyticsParameterCreativeSlot) =
    @"creative_slot";
=======
static NSString *const kFIRParameterCP1 = @"cp1";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Purchase currency in 3-letter <a href="http://en.wikipedia.org/wiki/ISO_4217#Active_codes">
/// ISO_4217</a> format (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterCurrency : @"USD",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterCurrency FIR_SWIFT_NAME(AnalyticsParameterCurrency) =
    @"currency";
=======
static NSString *const kFIRParameterCurrency = @"currency";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Flight or Travel destination (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterDestination : @"Mountain View, CA",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterDestination FIR_SWIFT_NAME(AnalyticsParameterDestination) =
    @"destination";
=======
static NSString *const kFIRParameterDestination = @"destination";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// The arrival date, check-out date or rental end date for the item. This should be in
/// YYYY-MM-DD format (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterEndDate : @"2015-09-14",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterEndDate FIR_SWIFT_NAME(AnalyticsParameterEndDate) = @"end_date";
=======
static NSString *const kFIRParameterEndDate = @"end_date";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Flight number for travel events (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterFlightNumber : @"ZZ800",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterFlightNumber FIR_SWIFT_NAME(AnalyticsParameterFlightNumber) =
    @"flight_number";
=======
static NSString *const kFIRParameterFlightNumber = @"flight_number";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Group/clan/guild ID (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterGroupID : @"g1",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterGroupID FIR_SWIFT_NAME(AnalyticsParameterGroupID) = @"group_id";

/// Index of an item in a list (signed 64-bit integer as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterIndex : @(1),
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterIndex FIR_SWIFT_NAME(AnalyticsParameterIndex) = @"index";

/// Item brand (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterItemBrand : @"Google",
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterItemBrand FIR_SWIFT_NAME(AnalyticsParameterItemBrand) =
    @"item_brand";
=======
static NSString *const kFIRParameterGroupID = @"group_id";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Item category (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterItemCategory : @"t-shirts",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterItemCategory FIR_SWIFT_NAME(AnalyticsParameterItemCategory) =
    @"item_category";
=======
static NSString *const kFIRParameterItemCategory = @"item_category";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Item ID (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterItemID : @"p7654",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterItemID FIR_SWIFT_NAME(AnalyticsParameterItemID) = @"item_id";
=======
static NSString *const kFIRParameterItemID = @"item_id";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// The Google <a href="https://developers.google.com/places/place-id">Place ID</a> (NSString) that
/// corresponds to the associated item. Alternatively, you can supply your own custom Location ID.
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterItemLocationID : @"ChIJiyj437sx3YAR9kUWC8QkLzQ",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterItemLocationID
    FIR_SWIFT_NAME(AnalyticsParameterItemLocationID) = @"item_location_id";
=======
static NSString *const kFIRParameterItemLocationID = @"item_location_id";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Item name (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterItemName : @"abc",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterItemName FIR_SWIFT_NAME(AnalyticsParameterItemName) =
    @"item_name";

/// The list in which the item was presented to the user (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterItemList : @"Search Results",
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterItemList FIR_SWIFT_NAME(AnalyticsParameterItemList) =
    @"item_list";

/// Item variant (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterItemVariant : @"Red",
///       // ...
///     };
/// </pre>
static NSString *const kFIRParameterItemVariant FIR_SWIFT_NAME(AnalyticsParameterItemVariant) =
    @"item_variant";
=======
static NSString *const kFIRParameterItemName = @"item_name";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Level in game (signed 64-bit integer as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterLevel : @(42),
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterLevel FIR_SWIFT_NAME(AnalyticsParameterLevel) = @"level";
=======
static NSString *const kFIRParameterLevel = @"level";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Location (NSString). The Google <a href="https://developers.google.com/places/place-id">Place ID
/// </a> that corresponds to the associated event. Alternatively, you can supply your own custom
/// Location ID.
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterLocation : @"ChIJiyj437sx3YAR9kUWC8QkLzQ",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterLocation FIR_SWIFT_NAME(AnalyticsParameterLocation) =
    @"location";
=======
static NSString *const kFIRParameterLocation = @"location";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// The advertising or marketing medium, for example: cpc, banner, email, push. Highly recommended
/// (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterMedium : @"email",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterMedium FIR_SWIFT_NAME(AnalyticsParameterMedium) = @"medium";
=======
static NSString *const kFIRParameterMedium = @"medium";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Number of nights staying at hotel (signed 64-bit integer as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterNumberOfNights : @(3),
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterNumberOfNights
    FIR_SWIFT_NAME(AnalyticsParameterNumberOfNights) = @"number_of_nights";
=======
static NSString *const kFIRParameterNumberOfNights = @"number_of_nights";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Number of passengers traveling (signed 64-bit integer as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterNumberOfPassengers : @(11),
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterNumberOfPassengers
    FIR_SWIFT_NAME(AnalyticsParameterNumberOfPassengers) = @"number_of_passengers";
=======
static NSString *const kFIRParameterNumberOfPassengers = @"number_of_passengers";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Number of rooms for travel events (signed 64-bit integer as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterNumberOfRooms : @(2),
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterNumberOfRooms FIR_SWIFT_NAME(AnalyticsParameterNumberOfRooms) =
    @"number_of_rooms";
=======
static NSString *const kFIRParameterNumberOfRooms = @"number_of_rooms";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Flight or Travel origin (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterOrigin : @"Mountain View, CA",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterOrigin FIR_SWIFT_NAME(AnalyticsParameterOrigin) = @"origin";
=======
static NSString *const kFIRParameterOrigin = @"origin";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Purchase price (double as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterPrice : @(1.0),
///       kFIRParameterCurrency : @"USD",  // e.g. $1.00 USD
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterPrice FIR_SWIFT_NAME(AnalyticsParameterPrice) = @"price";
=======
static NSString *const kFIRParameterPrice = @"price";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Purchase quantity (signed 64-bit integer as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterQuantity : @(1),
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterQuantity FIR_SWIFT_NAME(AnalyticsParameterQuantity) =
    @"quantity";
=======
static NSString *const kFIRParameterQuantity = @"quantity";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Score in game (signed 64-bit integer as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterScore : @(4200),
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterScore FIR_SWIFT_NAME(AnalyticsParameterScore) = @"score";
=======
static NSString *const kFIRParameterScore = @"score";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// The search string/keywords used (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterSearchTerm : @"periodic table",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterSearchTerm FIR_SWIFT_NAME(AnalyticsParameterSearchTerm) =
    @"search_term";
=======
static NSString *const kFIRParameterSearchTerm = @"search_term";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Shipping cost (double as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterShipping : @(9.50),
///       kFIRParameterCurrency : @"USD",  // e.g. $9.50 USD
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterShipping FIR_SWIFT_NAME(AnalyticsParameterShipping) =
    @"shipping";
=======
static NSString *const kFIRParameterShipping = @"shipping";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Sign up method (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterSignUpMethod : @"google",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterSignUpMethod FIR_SWIFT_NAME(AnalyticsParameterSignUpMethod) =
    @"sign_up_method";
=======
static NSString *const kFIRParameterSignUpMethod = @"sign_up_method";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// The origin of your traffic, such as an Ad network (for example, google) or partner (urban
/// airship). Identify the advertiser, site, publication, etc. that is sending traffic to your
/// property. Highly recommended (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterSource : @"InMobi",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterSource FIR_SWIFT_NAME(AnalyticsParameterSource) = @"source";
=======
static NSString *const kFIRParameterSource = @"source";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// The departure date, check-in date or rental start date for the item. This should be in
/// YYYY-MM-DD format (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterStartDate : @"2015-09-14",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterStartDate FIR_SWIFT_NAME(AnalyticsParameterStartDate) =
    @"start_date";
=======
static NSString *const kFIRParameterStartDate = @"start_date";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Tax amount (double as NSNumber).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterTax : @(1.0),
///       kFIRParameterCurrency : @"USD",  // e.g. $1.00 USD
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterTax FIR_SWIFT_NAME(AnalyticsParameterTax) = @"tax";
=======
static NSString *const kFIRParameterTax = @"tax";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// If you're manually tagging keyword campaigns, you should use utm_term to specify the keyword
/// (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterTerm : @"game",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterTerm FIR_SWIFT_NAME(AnalyticsParameterTerm) = @"term";
=======
static NSString *const kFIRParameterTerm = @"term";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// A single ID for a ecommerce group transaction (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterTransactionID : @"ab7236dd9823",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterTransactionID FIR_SWIFT_NAME(AnalyticsParameterTransactionID) =
    @"transaction_id";
=======
static NSString *const kFIRParameterTransactionID = @"transaction_id";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Travel class (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterTravelClass : @"business",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterTravelClass FIR_SWIFT_NAME(AnalyticsParameterTravelClass) =
    @"travel_class";
=======
static NSString *const kFIRParameterTravelClass = @"travel_class";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// A context-specific numeric value which is accumulated automatically for each event type. This is
/// a general purpose parameter that is useful for accumulating a key metric that pertains to an
/// event. Examples include revenue, distance, time and points. Value should be specified as signed
/// 64-bit integer or double as NSNumber. Notes: Values for pre-defined currency-related events
/// (such as @c kFIREventAddToCart) should be supplied using double as NSNumber and must be
/// accompanied by a @c kFIRParameterCurrency parameter. The valid range of accumulated values is
<<<<<<< HEAD
/// [-9,223,372,036,854.77, 9,223,372,036,854.77]. Supplying a non-numeric value, omitting the
/// corresponding @c kFIRParameterCurrency parameter, or supplying an invalid
/// <a href="https://goo.gl/qqX3J2">currency code</a> for conversion events will cause that
/// conversion to be omitted from reporting.
=======
/// [-9,223,372,036,854.77, 9,223,372,036,854.77].
>>>>>>> 709af5596380714c95f70c131124c9c363840824
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterValue : @(3.99),
///       kFIRParameterCurrency : @"USD",  // e.g. $3.99 USD
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterValue FIR_SWIFT_NAME(AnalyticsParameterValue) = @"value";
=======
static NSString *const kFIRParameterValue = @"value";
>>>>>>> 709af5596380714c95f70c131124c9c363840824

/// Name of virtual currency type (NSString).
/// <pre>
///     NSDictionary *params = @{
///       kFIRParameterVirtualCurrencyName : @"virtual_currency_name",
///       // ...
///     };
/// </pre>
<<<<<<< HEAD
static NSString *const kFIRParameterVirtualCurrencyName
    FIR_SWIFT_NAME(AnalyticsParameterVirtualCurrencyName) = @"virtual_currency_name";
=======
static NSString *const kFIRParameterVirtualCurrencyName = @"virtual_currency_name";
>>>>>>> 709af5596380714c95f70c131124c9c363840824
