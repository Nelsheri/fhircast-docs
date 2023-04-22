Profile: FHIRcastEncounterClose
Parent: Encounter
Id: fhircast-encounter-close
Title: "FHIRcast Encounter for Close Events"
Description: "Provides guidance as to which Encounter attributes should be present and considerations as to how each attribute should be valued in all [FHIR resource]-close events."
* id 1..1 
* id ^short = "A logical id of the resource must be provided."
* id ^definition =
"""
A logical id of the resource must be provided. The provided `id` SHALL be the same Encounter id which was provided in the [FHIR resource]-open event (see also
[FHIRcast Encounter for Open Events](StructureDefinition-fhircast-encounter-open.html)).
"""
* identifier 0..* MS
* identifier ^short = "At least one identifier of the Encounter SHOULD be provided in an [FHIR resource]-close request."
* identifier ^definition = 
"At least one `identifier` of the Encounter SHOULD be provided in a [FHIR resource]-close request. Providing one or more of the `indentifier` values for the Encounter
which was provided in the corresponding [FHIR resource]-open event enables Subscribers to perform identity verification according to their requirements."
* subject 1..1
* subject only Reference(FHIRcastPatientClose)
* subject ^short = "Reference to the patient associated with the encounter"
* subject ^definition = 
"SHALL be valued with a reference to the Patient resource which is present in the [FHIR resource]-close event."

/*
Instance: FHIRcastEncounterClose-Example
InstanceOf: FHIRcastEncounterClose
Usage: #example
Description: "Example of an encounter which could be used in a [FHIR resource]-close event"
* id = "8cc652ba-770e-4ae1-b688-6e8e7c737438"
* status = http://terminology.hl7.org/fhir/ValueSet/encounter-status#unknown
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* identifier.use = http://terminology.hl7.org/fhir/ValueSet/identifier-use#official
* identifier.value = "r2r22345"
* identifier.system = "http://myhealthcare.com/visits"
* subject = Reference(FHIRcastPatientClose-Example)
*/