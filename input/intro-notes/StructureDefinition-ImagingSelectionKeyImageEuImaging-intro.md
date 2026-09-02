{% include variable-definitions.md %}
{% include profile-references.md %}

{% include key-image-representation.md %}

## Performer Requirements

The profile distinguishes up to two performer entries for a key image:

* `pracRole` (0..1) identifies the practitioner role that selected the key image. Its `function` is fixed to [`PRF` (Performer)](http://hl7.org/fhir/ValueSet/series-performer-function#PRF), and its `actor` references a [[[EuPractitionerRole]]].
* `device` (0..1) identifies the device used for the key image. Its `function` is fixed to [`DEV` (Device)](http://hl7.org/fhir/ValueSet/series-performer-function#DEV), and its `actor` references a [[[DeviceEuImaging]]].

These slices and their function-to-actor correlation are enforced in R5. R4 is intended to apply the equivalent constraints through the cross-version performer extension.
