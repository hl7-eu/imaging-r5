//R4Instance: StructuredKeyImageRestR4
//R4InstanceOf: MediaKeyImageEuImaging
//R4Title: "Media: key image rest"
//R4Description: "Key image showing the ultrasound at rest."
//R4Usage: #example
//R4* subject = Reference(PatientStructuredReport)
//R4* type = http://terminology.hl7.org/CodeSystem/media-type#image "Image"
//R4* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
//R4* content
//R4  * contentType = #image/png
//R4  * id = "ig-loader-structured-keyimage-rest.png"
//R4  * url = "Media/StructuredKeyImageRestR4"

//R4Instance: StructuredKeyImageStressR4
//R4InstanceOf: MediaKeyImageEuImaging
//R4Title: "Media: key image stress"
//R4Description: "Key image showing the ultrasound during stress."
//R4Usage: #example
//R4* subject = Reference(PatientStructuredReport)
//R4* type = http://terminology.hl7.org/CodeSystem/media-type#image "Image"
//R4* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
//R4* content
//R4  * contentType = #image/png
//R4  * id = "ig-loader-structured-keyimage-stress.png"
//R4  * url = "Media/StructuredKeyImageStressR4"

Instance: StructuredKeyImageRest
InstanceOf: DocumentReferenceKeyImageEuImaging
Title: "DocumentReference: key image rest"
Description: "Key image showing the ultrasound at rest."
Usage: #example
* status = #current
* subject = Reference(PatientStructuredReport)
* content[content]
  * attachment
    * contentType = #image/png
    * id = "ig-loader-structured-keyimage-rest.png"
    * url = "DocumentReference/StructuredKeyImageRest"
  * extension[thumbnail]
    * url = $document-reference-thumbnail-url
    * valueBoolean = false
* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* category[imkeyimages]
  * coding[keyimagecode] = $loinc#55113-5 "Key images Document Radiology"

Instance: StructuredKeyImageStress
InstanceOf: DocumentReferenceKeyImageEuImaging
Title: "DocumentReference: key image stress"
Description: "Key image showing the ultrasound during stress."
Usage: #example
* status = #current
* subject = Reference(PatientStructuredReport)
* content[content]
  * attachment
    * contentType = #image/png
    * id = "ig-loader-structured-keyimage-stress.png"
    * url = "DocumentReference/StructuredKeyImageStress"
  * extension[thumbnail]
    * url = $document-reference-thumbnail-url
    * valueBoolean = false
* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* category[imkeyimages]
  * coding[keyimagecode] = $loinc#55113-5 "Key images Document Radiology"
