// Profile-focused key-image examples (not wired into a report bundle).

//R4Instance: KeyImageDicomInstanceExampleR4
//R4InstanceOf: MediaKeyImageEuImaging
//R4Title: "Media: DICOM key image instance"
//R4Description: "Profile example: a key image representing a DICOM instance, carrying the SOP Instance UID, Series Instance UID and Study Instance UID identifiers."
//R4Usage: #example
//R4* subject = Reference(PatientStructuredReport)
//R4* type = http://terminology.hl7.org/CodeSystem/media-type#image "Image"
//R4* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
//R4* identifier[sopClassInstanceUid]
//R4  * type = MissingDicomTerminology#00080018
//R4  * system = "urn:ietf:rfc:3986"
//R4  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.121"
//R4* identifier[seriesInstanceUid]
//R4  * type = http://dicom.nema.org/resources/ontology/DCM#112002
//R4  * system = "urn:dicom:uid"
//R4  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.120"
//R4* identifier[studyInstanceUid]
//R4  * type = http://dicom.nema.org/resources/ontology/DCM#110180
//R4  * system = "urn:dicom:uid"
//R4  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.110"
//R4* content
//R4  * contentType = #application/dicom
//R4  * url = "https://pacs.example.org/wado?requestType=WADO&studyUID=1.2.840.113619.2.5.1762583153.215519.978957063.110&seriesUID=1.2.840.113619.2.5.1762583153.215519.978957063.120&objectUID=1.2.840.113619.2.5.1762583153.215519.978957063.121&contentType=application/dicom"

Instance: KeyImageDicomInstanceExample
InstanceOf: DocumentReferenceKeyImageEuImaging
Title: "DocumentReference: DICOM key image instance"
Description: "Profile example: a key image representing a DICOM instance, carrying the SOP Instance UID, Series Instance UID and Study Instance UID identifiers."
Usage: #example
* status = #current
* subject = Reference(PatientStructuredReport)
* identifier[sopClassInstanceUid]
  * type = MissingDicomTerminology#00080018
  * system = "urn:ietf:rfc:3986"
  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.121"
* identifier[seriesInstanceUid]
  * type = http://dicom.nema.org/resources/ontology/DCM#112002
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.120"
* identifier[studyInstanceUid]
  * type = http://dicom.nema.org/resources/ontology/DCM#110180
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.840.113619.2.5.1762583153.215519.978957063.110"
* content[content]
  * attachment
    * contentType = #application/dicom
    * url = "https://pacs.example.org/wado?requestType=WADO&studyUID=1.2.840.113619.2.5.1762583153.215519.978957063.110&seriesUID=1.2.840.113619.2.5.1762583153.215519.978957063.120&objectUID=1.2.840.113619.2.5.1762583153.215519.978957063.121&contentType=application/dicom"
  * extension[thumbnail]
    * url = $document-reference-thumbnail-url
    * valueBoolean = false
* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
* category[imkeyimages]
  * coding[keyimagecode] = $loinc#55113-5 "Key images Document Radiology"
