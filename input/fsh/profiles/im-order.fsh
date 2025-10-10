Profile: ServiceRequestOrderEuImaging
Parent: $EuServiceRequest
Title: "ServiceRequest: Imaging Order"
Description: "This profile on ServiceRequest represents the order for the Imaging Study and report."
* insert SetFmmAndStatusRule( 1, draft )

* category 1..*
  * insert SliceElement( #value, $this )
* category contains imaging 1..1
* category[imaging] = $sct#363679005 // "Imaging"

* identifier
  * insert SliceElement( #value, type )
* identifier contains accessionNumber 0..1
* identifier[accessionNumber] only AccessionNumberIdentifierEuImaging

//R4* supportingInfo.extension contains 
//R4    http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.supportingInfo named codeableConcept 0..*
// //R4* supportingInfo.extension[codeableConcept]
// //R4  * valueCodeableConcept from http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips

* supportingInfo 0..*
  * insert SliceElement( #value, $this )
* supportingInfo contains pregnancy 0..1
* supportingInfo[pregnancy] from http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips

//R4* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.reason named reason 0..*

// * status 1..1

// * subject 1..1
// * subject only Reference($EuPatient)

// // TODO obligation for client?
// * intent 1..1

// * insurance 0..1
//   * insert SetPopulateIfKnown
// * insurance only Reference(ImCoverage)

// * requester 0..1
//   * insert SetPopulateIfKnown
// * requester only Reference(ServiceRequestOrderEuImagingPlacer or $EuPatient)

// * authoredOn 0..1
//   * insert SetPopulateIfKnown

// * reason 0..*
//   * insert SetPopulateIfKnown
//   * ^short = "Clinical question/reason for the order"
//   * ^definition = "The reason for the order. Can be coded, textual or a reference to a structured element."




Mapping: DicomToServiceRequestOrderEuImaging
Source: ServiceRequestOrderEuImaging
Target: "http://nema.org/dicom"
Title: "Mapping from DICOM to Imaging Order"
Description: "Mapping from DICOM to Imaging Order."
* identifier[accessionNumber] -> "AccessionNumber (0008,0050)"
* subject -> "(0010/*)"
* note -> "RequestedProcedureDescription (0040,0100)"
* code -> "RequestedProcedureCodeSequence (0040,1001)"
//R4* extension[reason].valueCodeableConcept.text -> "ReasonForTheRequestedProcedure (0040,1002)"
* reason.concept.text -> "ReasonForTheRequestedProcedure (0040,1002)"
//R4* extension[reason].valueCodeableConcept -> "ReasonForTheRequestedProcedure (0040,100A)"
* reason.concept -> "ReasonForTheRequestedProcedure (0040,100A)"
