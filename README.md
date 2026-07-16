# Mapsted Sample App — iOS

A native iOS sample application demonstrating how to integrate the **Mapsted Mobile SDK** (indoor
positioning, mapping, wayfinding, and location-based services) into an iOS app. Built against the
current **Mapsted SDK 26.7.1** release.

A sample Mapsted licence file is included, providing access to the **Square One Shopping Centre**
(propertyId `504`) so you can run the app out of the box.

## Prerequisites

| | Minimum |
|---|---|
| iOS deployment target | **16.0** |
| Xcode | 15.0+ |
| CocoaPods | 1.16+ |

## Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/MapstedHQ/MapstedSampleiOS.git
   ```
2. From the `Sample` directory, install the pods (the Podfile already declares the Mapsted pod
   source `https://github.com/MapstedHQ/podspec.git`):
   ```bash
   cd Sample
   pod install
   ```
3. Open **`Sample.xcworkspace`** in Xcode.
4. Ensure the Mapsted licence file (`ios_licence.key`) is present in the app's `Resources` folder.
   The included sample licence covers Square One (propertyId `504`); use your own licence key for
   your own properties.
5. Select a device or simulator and run.

## Documentation

Full integration guides, API references, and getting-started tutorials are available at
[developer.mapsted.com/mobile-sdk](https://developer.mapsted.com/mobile-sdk/).

## Licence

This sample and the Mapsted Mobile SDK are distributed under the Mapsted proprietary licence — see
[`LICENSE`](LICENSE). All rights reserved.
