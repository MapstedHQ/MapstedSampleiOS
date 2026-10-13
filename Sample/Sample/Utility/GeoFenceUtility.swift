//
//  GeoFenceUtility.swift
//  Mapsted Sample app
//
//  Created by Parth Bhatt on 23/01/2024.
//  Copyright © 2024 Mapsted. All rights reserved.
//

import Foundation
import MapstedCore


class GeoFenceUtility: NSObject {

    static let shared = GeoFenceUtility()

    private override init() {
        super.init()
    }

    // Create a Geofence for Entity
    func createGeofenceForEntity(propertyId: Int, entityId: Int, buildingId: Int, floorId: Int, geofenceId: String, delaySecond: Float = 5.0, stateChange: Bool = false, direction: EnumLocationCriteriaTriggerDirection) -> CoreEngineGeofenceTriggerBuilder? {

        let entityLocationCriteria = CoreEnginePoiVicinityLocationCriteria()
        entityLocationCriteria.entityZones = [MNEntityZone(propertyId: propertyId, buildingId: buildingId, floorId: floorId, entityId: entityId)]
        entityLocationCriteria.triggerDirection = direction
        entityLocationCriteria.setTriggerDelay(delaySecond, ignoreDelayedEventIfStateChanged: stateChange)

        let builder = CoreEngineGeofenceTriggerBuilder(propertyId: propertyId, geofenceId: geofenceId)
        builder?.setLocationCriteria(entityLocationCriteria)
        return builder
    }

    // Create a Geofence for Property
    func createGeofenceForProperty(propertyId: Int, geofenceId: String, delaySecond: Float = 5.0, stateChange: Bool = false, direction: EnumLocationCriteriaTriggerDirection) -> CoreEngineGeofenceTriggerBuilder? {

        guard let propertyLocationCriteria = CoreEnginePropertyLocationCriteria(propertyId: propertyId) else { return nil }
        propertyLocationCriteria.triggerDirection = direction
        propertyLocationCriteria.setTriggerDelay(delaySecond, ignoreDelayedEventIfStateChanged: stateChange)

        let builder = CoreEngineGeofenceTriggerBuilder(propertyId: propertyId, geofenceId: geofenceId)
        builder?.setLocationCriteria(propertyLocationCriteria)
        return builder
    }

    // Create a Geofence for Building
    func createGeofenceForBuilding(propertyId: Int, buildingId: Int, geofenceId: String, delaySecond: Float = 5.0, stateChange: Bool = false, direction: EnumLocationCriteriaTriggerDirection) -> CoreEngineGeofenceTriggerBuilder? {

        guard let buildingLocationCriteria = CoreEngineBuildingLocationCriteria(buildingId: buildingId) else { return nil }
        buildingLocationCriteria.triggerDirection = direction
        buildingLocationCriteria.setTriggerDelay(delaySecond, ignoreDelayedEventIfStateChanged: stateChange)

        let builder = CoreEngineGeofenceTriggerBuilder(propertyId: propertyId, geofenceId: geofenceId)
        builder?.setLocationCriteria(buildingLocationCriteria)
        return builder
    }

    // Create a Geofence for Floor
    func createGeofenceForFloor(propertyId: Int, floorId: Int, geofenceId: String, delaySecond: Float = 5.0, stateChange: Bool = false, direction: EnumLocationCriteriaTriggerDirection) -> CoreEngineGeofenceTriggerBuilder? {

        guard let floorLocationCriteria = CoreEngineFloorLocationCriteria(floorId: floorId) else { return nil }
        floorLocationCriteria.triggerDirection = direction
        floorLocationCriteria.setTriggerDelay(delaySecond, ignoreDelayedEventIfStateChanged: stateChange)

        let builder = CoreEngineGeofenceTriggerBuilder(propertyId: propertyId, geofenceId: geofenceId)
        builder?.setLocationCriteria(floorLocationCriteria)
        return builder
    }
}
