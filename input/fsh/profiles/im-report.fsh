Profile: BundleReportEuImaging
Parent: Bundle
Title: "Bundle: Imaging Report"
Description: "Document Bundle for Imaging Report"
* insert SetFmmAndStatusRule( 1, draft )

* obeys dr-comp-author-org

* type = #document
* total ..0
* link ..0
* entry 2..*
  * insert SliceElement( #profile, resource )
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0
* entry contains 
    CompositionEuImaging 1..1 and
    DiagnosticReportEuImaging 1..1 and
    patient 1..1
* entry[CompositionEuImaging]
  * resource only CompositionEuImaging
* entry[DiagnosticReportEuImaging]
  * resource only DiagnosticReportEuImaging
* entry[patient]
  * resource only $EuPatient


Invariant: dr-comp-author-org
Description: "DiagnosticReport and Composition SHALL have the same author Organization"
Expression: "Bundle.entry.resource.ofType(DiagnosticReport).performer.resolve().ofType(Organization) = Bundle.entry.resource.ofType(Composition).author.resolve().ofType(Organization) or (Bundle.entry.resource.ofType(DiagnosticReport).performer.resolve().ofType(Organization).empty() and Bundle.entry.resource.ofType(Composition).author.resolve().ofType(Organization).empty())"
Severity:    #error