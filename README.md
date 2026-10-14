# Mapsted Sample App — iOS

A native iOS sample application demonstrating how to integrate the **Mapsted Mobile SDK** (indoor
positioning, mapping, wayfinding, and location-based services) into an iOS app. Built against the
current **Mapsted iOS SDK 26.10.3** release (CocoaPods, pinned to exactly `26.10.3` in `Sample/Podfile`).

A sample Mapsted licence file is included, providing access to the **Square One Shopping Centre**
(propertyId `504`) so you can run the app out of the box.

## Prerequisites

| | Minimum |
|---|---|
| iOS deployment target | **16.0** |
| Xcode | 26.3+ |
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
5. Select a scheme and a device or simulator, then run:
   - **Sample** — map with the prebuilt Map UI (search, floor selector, routing), plus commented example
     calls for entity search, route requests and distance estimates in `MainViewController.swift`
   - **Sample_MapOnly** — map without the prebuilt UI
   - **Sample_LocSimulation** — simulated walk through the venue with geofence alerts

More feature-by-feature samples are in
[MapstedMobileSampleProjects](https://github.com/MapstedHQ/MapstedMobileSampleProjects).

## Documentation

Full integration guides, API references, and getting-started tutorials are available at
[developer.mapsted.com/mobile-sdk](https://developer.mapsted.com/mobile-sdk/).

## Licence

This sample and the Mapsted Mobile SDK are distributed under the Mapsted proprietary licence — see
[`LICENSE`](LICENSE). All rights reserved.
