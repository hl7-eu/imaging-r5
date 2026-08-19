Profile: DocumentReferenceKeyImageEuImaging
Parent: $EuDocumentReference
Title: "DocumentReference: Key Image"
Description: """Represents a key image for a patient as image content in a `DocumentReference`. Use this profile to include or directly link the image (DICOM or non-DICOM); use `ImagingSelectionKeyImageEuImaging` when the key image is identified using DICOM selection data.\n
When referring to a DICOM image, the `DocumentReference.content.attachment.url` should be a WADO-URI. When referring to a non-DICOM image, the `DocumentReference.content.attachment.url` should be a direct URL to the image.\n
When the resource represents a DICOM artifact it SHALL contain the applicable DICOM identifier in the identifier element: the SOP Instance UID for a DICOM instance, the Series Instance UID for a DICOM series, and/or the Study Instance UID for a DICOM study. Such a resource MAY also reference an `ImagingSelectionKeyImageEuImaging` to indicate the DICOM source.
"""
* insert SetFmmAndStatusRule( 1, draft )

* identifier
  * insert SliceElement( #value, type )
* identifier contains seriesInstanceUid 0..1 and sopClassInstanceUid 0..1 and studyInstanceUid 0..1
* identifier[sopClassInstanceUid]
  * type 1..1
  * type = MissingDicomTerminology#00080018
  * system 1..1
  * system = "urn:ietf:rfc:3986"
  * value 1..1
* identifier[seriesInstanceUid]
  * type 1..1
  * type = http://dicom.nema.org/resources/ontology/DCM#112002
  * system 1..1
  * value 1..1
* identifier[studyInstanceUid]
  * type 1..1
  * type = http://dicom.nema.org/resources/ontology/DCM#110180
  * system 1..1
  * value 1..1

* basedOn
  * insert SliceElement( #type, $this )
* basedOn contains ServiceRequestOrderEuImagingaccession 0..1
* insert BasedOnServiceRequestOrderEuImagingReference( ServiceRequestOrderEuImagingaccession )
* modality 1..1

// type of image reference
* type from http://terminology.hl7.org/ValueSet/image-reference-type (preferred)

* category 1..*
  * insert SliceElement( #profile, $this )
* category contains imkeyimages 1..1
* category[imkeyimages]
  * coding
    insert SliceElement( #value, $this )
  * coding contains keyimagecode 1..1
  * coding[keyimagecode] = $loinc#55113-5 // "Key images Document Radiology"

  
* subject 1..1
* subject only Reference( $EuPatient )

* author
  * insert SliceElement( #profile, $this )
* author contains performer 0..*
* author[performer] only Reference( $EuPractitionerRole )
  
* content
  * attachment 1..1
* content
  * insert SliceElement( #value, [[extension.value]] )
* content contains
    thumbnail 0..1 and
    content 1..1
* content[thumbnail]
  * extension contains $document-reference-thumbnail-url named thumbnail 1..1
  * extension[thumbnail].valueBoolean = true
* content[content]
  * extension contains $document-reference-thumbnail-url named thumbnail 1..1
  * extension[thumbnail].valueBoolean = false
  * attachment 1..1
    * url 1..1
      
