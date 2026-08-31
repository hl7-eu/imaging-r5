// Profile-focused key-image examples (not wired into a report bundle).

//R4Instance: KeyImageDicomInstanceExample
//R4InstanceOf: MediaKeyImageEuImaging
//R4Title: "Media: DICOM key image instance"
//R4Description: "Profile example: a key image representing a DICOM instance, carrying the SOP Instance UID, Series Instance UID and Study Instance UID identifiers."
//R4Usage: #example
//R4* subject = Reference(PatientStructuredReport)
//R4* type = http://terminology.hl7.org/CodeSystem/media-type#image "Image"
//R4* modality = http://dicom.nema.org/resources/ontology/DCM#US "Ultrasound"
//R4* identifier[sopClassInstanceUid]
// FHIR-56757: MissingDicomTerminology#00080018 is temporary; replace with the DICOM terminology IG equivalent once published.
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
// FHIR-56757: MissingDicomTerminology#00080018 is temporary; replace with the DICOM terminology IG equivalent once published.
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

//R4Instance: ImagingSelectionStudyExample
//R4InstanceOf: ImagingSelectionEuImaging
//R4Title: "ImagingSelection: referenced imaging study"
//R4Description: "Profile example: an ImagingSelection represented in R4 Basic form, pointing to the source imaging study."
//R4Usage: #example
//R4* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R4* subject = Reference(PatientStructuredReport)
//R4* modifierExtension[status].valueCode = #available
//R4* extension[code].valueCodeableConcept = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R4* extension[derivedFrom][study].valueReference = Reference(ImagingStudyStructuredReport)

Instance: ImagingSelectionStudyExample
InstanceOf: ImagingSelectionEuImaging
Title: "ImagingSelection: referenced imaging study"
Description: "Profile example: an ImagingSelection pointing to the source imaging study."
Usage: #example
* status = #available
* subject = Reference(PatientStructuredReport)
* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* derivedFrom[study] = Reference(ImagingStudyStructuredReport)

//R4Instance: SrInstanceImagingSelectionExample
//R4InstanceOf: SrInstanceImagingSelectionEuImaging
//R4Title: "ImagingSelection: DICOM SR instance"
//R4Description: "Profile example: an ImagingSelection represented in R4 Basic form for a selected DICOM Structured Report instance."
//R4Usage: #example
//R4* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R4* subject = Reference(PatientStructuredReport)
//R4* modifierExtension[status].valueCode = #available
//R4* extension[code].valueCodeableConcept = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R4* extension[derivedFrom].valueReference = Reference(ImagingStudyStructuredReport)
//R4* identifier[sopInstanceUid]
//R4  * type = MissingDicomTerminology#00080018
//R4  * system = "urn:dicom:uid"
//R4  * value = "urn:oid:1.2.840.113619.2.55.3.604688435.781.1599602484.467"
//R4* extension[studyUid].valueId = "1.2.840.113619.2.55.3.604688435.781.1599602484.400"
//R4* extension[seriesUid].valueId = "1.2.840.113619.2.55.3.604688435.781.1599602484.460"
//R4* extension[instance].extension[uid].valueId = "1.2.840.113619.2.55.3.604688435.781.1599602484.467"

Instance: SrInstanceImagingSelectionExample
InstanceOf: SrInstanceImagingSelectionEuImaging
Title: "ImagingSelection: DICOM SR instance"
Description: "Profile example: an ImagingSelection for a selected DICOM Structured Report instance."
Usage: #example
* status = #available
* subject = Reference(PatientStructuredReport)
* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* derivedFrom[study] = Reference(ImagingStudyStructuredReport)
* identifier[sopInstanceUid]
  * type = MissingDicomTerminology#00080018
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.840.113619.2.55.3.604688435.781.1599602484.467"
* studyUid = "1.2.840.113619.2.55.3.604688435.781.1599602484.400"
* seriesUid = "1.2.840.113619.2.55.3.604688435.781.1599602484.460"
* instance.uid = "1.2.840.113619.2.55.3.604688435.781.1599602484.467"

//R4Instance: KeyImageImagingSelectionDicomInstanceExample
//R4InstanceOf: ImagingSelectionKeyImageEuImaging
//R4Title: "ImagingSelection: DICOM key image instance"
//R4Description: "Profile example: a key image represented as an ImagingSelection, carrying DICOM study, series and selected SOP Instance UID data."
//R4Usage: #example
//R4* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R4* subject = Reference(PatientStructuredReport)
//R4* modifierExtension[status].valueCode = #available
//R4* extension[code].valueCodeableConcept = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
//R4* extension[title].valueMarkdown = "Representative ultrasound key image"
//R4* extension[description].valueString = "Frame selected by the reporting radiologist for follow-up comparison."
//R4* extension[derivedFrom][study].valueReference = Reference(ImagingStudyStructuredReport)
//R4 // pracRole
//R4* extension[performer][+].extension[actor].valueReference = Reference(PractitionerRoleStructuredReportAuthor)
//R4* extension[performer][=].extension[function].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF "Performer"
//R4 // device
//R4* extension[performer][+].extension[actor].valueReference = Reference(UltrasoundScannerExample)
//R4* extension[performer][=].extension[function].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV "Device"
//R4* extension[studyUid].valueId = "1.2.840.113619.2.5.1762583153.215519.978957063.110"
//R4* extension[seriesUid].valueId = "1.2.840.113619.2.5.1762583153.215519.978957063.120"
//R4* extension[instance].extension[uid].valueId = "1.2.840.113619.2.5.1762583153.215519.978957063.121"

Instance: KeyImageImagingSelectionDicomInstanceExample
InstanceOf: ImagingSelectionKeyImageEuImaging
Title: "ImagingSelection: DICOM key image instance"
Description: "Profile example: a key image represented as an ImagingSelection, carrying DICOM study, series and selected SOP Instance UID data."
Usage: #example
* status = #available
* subject = Reference(PatientStructuredReport)
* code = http://dicom.nema.org/resources/ontology/DCM#113000 "Of Interest"
* extension[title].valueMarkdown = "Representative ultrasound key image"
* extension[description].valueString = "Frame selected by the reporting radiologist for follow-up comparison."
* derivedFrom[study] = Reference(ImagingStudyStructuredReport)
* performer[pracRole].actor = Reference(PractitionerRoleStructuredReportAuthor)
* performer[pracRole].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF "Performer"
* performer[device].actor = Reference(UltrasoundScannerExample)
* performer[device].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV "Device"
* studyUid = "1.2.840.113619.2.5.1762583153.215519.978957063.110"
* seriesUid = "1.2.840.113619.2.5.1762583153.215519.978957063.120"
* instance.uid = "1.2.840.113619.2.5.1762583153.215519.978957063.121"
