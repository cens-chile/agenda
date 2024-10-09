<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Appointment
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Appointment</sch:title>
    <sch:rule context="f:Appointment">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &gt;= 1">basedOn: minimum cardinality of 'basedOn' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &lt;= 1">basedOn: maximum cardinality of 'basedOn' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Appointment/f:participant</sch:title>
    <sch:rule context="f:Appointment/f:participant">
      <sch:assert test="count(f:actor) &gt;= 1">actor: minimum cardinality of 'actor' is 1</sch:assert>
      <sch:assert test="count(f:required) &gt;= 1">required: minimum cardinality of 'required' is 1</sch:assert>
      <sch:assert test="count(f:actor) &gt;= 1">actor: minimum cardinality of 'actor' is 1</sch:assert>
      <sch:assert test="count(f:required) &gt;= 1">required: minimum cardinality of 'required' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
