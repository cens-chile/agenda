<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PrestadorCL
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Practitioner</sch:title>
    <sch:rule context="f:Practitioner">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Servicios']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Servicios': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:name) &lt;= 1">name: maximum cardinality of 'name' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:name</sch:title>
    <sch:rule context="f:Practitioner/f:name">
      <sch:assert test="count(f:given) &gt;= 1">given: minimum cardinality of 'given' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:name/f:family</sch:title>
    <sch:rule context="f:Practitioner/f:name/f:family">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
