﻿<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="facb6603-969d-41da-ace4-527ddac22cc3" Description="Description for Company.SplLanguage.SplLanguage" Name="SplLanguage" DisplayName="SplLanguage" Namespace="Company.SplLanguage" ProductName="Features" CompanyName="Variamos" PackageGuid="73551e97-f942-45a6-89f0-12e006505e80" PackageNamespace="Company.SplLanguage" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="7d6e993b-40d2-40e8-844b-f90a63c6b8e2" Description="The root in which all other elements are embedded. Appears as a diagram." Name="FeatureModel" DisplayName="Feature Model" Namespace="Company.SplLanguage">
      <Properties>
        <DomainProperty Id="902db19c-67ed-4e50-9c37-085535f7002b" Description="Description for Company.SplLanguage.FeatureModel.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9835d294-432f-486c-b9f7-8021f11f7564" Description="Description for Company.SplLanguage.FeatureModel.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="FeatureElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FeatureModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="40a50281-2f90-462d-a6a7-0522164e04cb" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="FeatureElement" DisplayName="Feature Element" Namespace="Company.SplLanguage">
      <Properties>
        <DomainProperty Id="083a65c0-9a7e-46de-8c61-bb13a304ea4f" Description="Description for Company.SplLanguage.FeatureElement.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0aeac9c5-bf64-4592-b421-3ad8a48d22fd" Description="Description for Company.SplLanguage.FeatureElement.Included" Name="Included" DisplayName="Included">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="06fa5ce3-5517-491c-b2ac-2a9445b7127d" Description="Description for Company.SplLanguage.FeatureElement.Type" Name="Type" DisplayName="Type">
          <Type>
            <DomainEnumerationMoniker Name="FeatureType" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9b1c52c6-8c35-45ed-bbc3-c9eb1da950b4" Description="Description for Company.SplLanguage.FeatureElement.Label" Name="Label" DisplayName="Label">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="6600a355-0f20-49e9-a07c-fa161173b2ce" Description="Description for Company.SplLanguage.FeatureElement.Id Feature" Name="IdFeature" DisplayName="Id Feature">
          <Type>
            <ExternalTypeMoniker Name="/System/Guid" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="8edaac53-90f8-4739-a6b2-39fcae20306f" Description="Description for Company.SplLanguage.FeatureAttribute" Name="FeatureAttribute" DisplayName="Feature Attribute" Namespace="Company.SplLanguage">
      <Properties>
        <DomainProperty Id="edb24ed8-a5cb-4f33-a482-2ce95393e3f4" Description="Description for Company.SplLanguage.FeatureAttribute.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="75afc430-1646-456a-a507-abb07423791c" Description="Description for Company.SplLanguage.FeatureAttribute.Domain" Name="Domain" DisplayName="Domain">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a672ac9d-314e-4fc8-9688-93508b83b261" Description="Description for Company.SplLanguage.FeatureAttribute.Value" Name="Value" DisplayName="Value">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="81b4eb75-6e8d-45c2-8a83-5d915131d8ae" Description="Embedding relationship between the Model and Elements" Name="FeatureModelHasElements" DisplayName="Feature Model Has Elements" Namespace="Company.SplLanguage" IsEmbedding="true">
      <Source>
        <DomainRole Id="cbc98b1d-6bd2-415a-9aba-0bad03555f41" Description="" Name="FeatureModel" DisplayName="Feature Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ec1844d9-3726-4ffb-a09b-d63b7803f9f5" Description="" Name="Element" DisplayName="Element" PropertyName="FeatureModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Feature Model">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="20b619db-33d1-485b-9cac-5c3d29f9c491" Description="Reference relationship between Elements." Name="FeatureElementOptionalReferencesFeatureElement" DisplayName="Feature Element Optional References Feature Element" Namespace="Company.SplLanguage">
      <Source>
        <DomainRole Id="c8080e7a-3c3a-42e5-802b-4a0f37d1d9c5" Description="Description for Company.SplLanguage.ExampleRelationship.Target" Name="SourceOptionalFeatureElement" DisplayName="SourceOptionalFeatureElement" PropertyName="SourceOptionalFeatureElement" PropertyDisplayName="Source Optional Feature Element">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="81e849b8-dbac-47e0-9046-ee0e3effd589" Description="Description for Company.SplLanguage.ExampleRelationship.Source" Name="TargetOptionalFeatureElement" DisplayName="Target Optional Feature Element" PropertyName="TargetOptionalFeatureElement" PropertyDisplayName="Target Optional Feature Element">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="9d57ccb1-6b0e-4a45-9dc2-9f117a026a92" Description="Description for Company.SplLanguage.FeatureElementMandatoryReferencesFeatureElement" Name="FeatureElementMandatoryReferencesFeatureElement" DisplayName="Feature Element Mandatory References Feature Element" Namespace="Company.SplLanguage">
      <Source>
        <DomainRole Id="ba943ae6-8ff8-4a6d-b9b6-0849c375144b" Description="Description for Company.SplLanguage.FeatureElementMandatoryReferencesFeatureElement.SourceMandatoryFeatureElement" Name="SourceMandatoryFeatureElement" DisplayName="Source Mandatory Feature Element" PropertyName="SourceMandatoryFeatureElement" PropertyDisplayName="Source Mandatory Feature Element">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="da45bd39-cb08-420f-9637-5908e9b2f49f" Description="Description for Company.SplLanguage.FeatureElementMandatoryReferencesFeatureElement.TargetMandatoryFeatureElement" Name="TargetMandatoryFeatureElement" DisplayName="Target Mandatory Feature Element" PropertyName="TargetMandatoryFeatureElement" PropertyDisplayName="Target Mandatory Feature Element">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="6c077d53-2bcb-4bdd-b992-bbadc08f114c" Description="Description for Company.SplLanguage.FeatureElementRequiresReferencesFeatureElements" Name="FeatureElementRequiresReferencesFeatureElements" DisplayName="Feature Element Requires References Feature Elements" Namespace="Company.SplLanguage">
      <Source>
        <DomainRole Id="0eb1a27f-935e-40b6-b12f-3742cc7816f8" Description="Description for Company.SplLanguage.FeatureElementRequiresReferencesFeatureElements.SourceRequiresFeatureElement" Name="SourceRequiresFeatureElement" DisplayName="Source Requires Feature Element" PropertyName="SourceRequiresFeatureElement" PropertyDisplayName="Source Requires Feature Element">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="caf96b38-cda1-4044-9328-1673d2db0584" Description="Description for Company.SplLanguage.FeatureElementRequiresReferencesFeatureElements.TargetRequiresFeatureElement" Name="TargetRequiresFeatureElement" DisplayName="Target Requires Feature Element" PropertyName="TargetRequiresFeatureElement" PropertyDisplayName="Target Requires Feature Element">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="32831621-5ce2-4339-a437-2efdacb820cd" Description="Description for Company.SplLanguage.FeatureElementExcludesReferenceFeatureElement" Name="FeatureElementExcludesReferenceFeatureElement" DisplayName="Feature Element Excludes Reference Feature Element" Namespace="Company.SplLanguage">
      <Source>
        <DomainRole Id="bfda71cd-6af0-4add-ac93-7d4afd44f943" Description="Description for Company.SplLanguage.FeatureElementExcludesReferenceFeatureElement.SourceExcludeFeatureElement" Name="SourceExcludeFeatureElement" DisplayName="Source Exclude Feature Element" PropertyName="TargetExcludeFeatureElements" PropertyDisplayName="Target Exclude Feature Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="00ed89f8-1810-4700-873b-115a3e716a80" Description="Description for Company.SplLanguage.FeatureElementExcludesReferenceFeatureElement.TargetExcludeFeatureElement" Name="TargetExcludeFeatureElement" DisplayName="Target Exclude Feature Element" PropertyName="SourceExcludeFeatureElements" PropertyDisplayName="Source Exclude Feature Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <DomainEnumeration Name="FeatureType" Namespace="Company.SplLanguage" Description="Description for Company.SplLanguage.FeatureType">
      <Literals>
        <EnumerationLiteral Description="Description for Company.SplLanguage.FeatureType.Abstract" Name="Abstract" Value="0" />
        <EnumerationLiteral Description="Description for Company.SplLanguage.FeatureType.Concrete" Name="Concrete" Value="1" />
        <EnumerationLiteral Description="Description for Company.SplLanguage.FeatureType.Root" Name="Root" Value="2" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <GeometryShape Id="828ca0d5-7a5e-414a-adb6-d8b8b144cc01" Description="Shape used to represent ExampleElements on a Diagram." Name="FeatureShape" DisplayName="Feature Shape" Namespace="Company.SplLanguage" FixedTooltipText="Feature Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IncludedDecorator" DisplayName="Included Decorator" DefaultIcon="Resources\SelectedIcon.bmp" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="8a34525c-9a54-4517-bb42-96b5268a4e48" Description="Description for Company.SplLanguage.FeatureAttributeShape" Name="FeatureAttributeShape" DisplayName="Feature Attribute Shape" Namespace="Company.SplLanguage" FixedTooltipText="Feature Attribute Shape" InitialHeight="1" Geometry="Rectangle" />
  </Shapes>
  <Connectors>
    <Connector Id="f0b7116b-612f-46cc-98dc-ebaa03cd1db6" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="OptionalConnector" DisplayName="Optional Connector" Namespace="Company.SplLanguage" FixedTooltipText="Optional Connector" Color="113, 111, 110" TargetEndStyle="EmptyDiamond" Thickness="0.01" RoutingStyle="Straight" />
    <Connector Id="b33c28f5-07e2-4271-9171-b8b4b6132bab" Description="Description for Company.SplLanguage.MandatoryConnector" Name="MandatoryConnector" DisplayName="Mandatory Connector" Namespace="Company.SplLanguage" FixedTooltipText="Mandatory Connector" TargetEndStyle="FilledDiamond" Thickness="0.01" RoutingStyle="Straight" />
    <Connector Id="5b5a6950-700f-400f-a55c-6d1e08c6c096" Description="Description for Company.SplLanguage.RequiresConnector" Name="RequiresConnector" DisplayName="Requires Connector" Namespace="Company.SplLanguage" FixedTooltipText="Requires Connector" TargetEndStyle="EmptyArrow" Thickness="0.01" RoutingStyle="Straight" />
    <Connector Id="18106ec3-7708-473f-be15-6639cec425eb" Description="Description for Company.SplLanguage.ExcludeConnector" Name="ExcludeConnector" DisplayName="Exclude Connector" Namespace="Company.SplLanguage" FixedTooltipText="Exclude Connector" SourceEndStyle="EmptyArrow" TargetEndStyle="EmptyArrow" Thickness="0.01" RoutingStyle="Straight" />
  </Connectors>
  <XmlSerializationBehavior Name="SplLanguageSerializationBehavior" Namespace="Company.SplLanguage">
    <ClassData>
      <XmlClassData TypeName="FeatureModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureModelMoniker" ElementName="featureModel" MonikerTypeName="FeatureModelMoniker">
        <DomainClassMoniker Name="FeatureModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="FeatureModelHasElements" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="FeatureModel/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="FeatureModel/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FeatureElement" MonikerAttributeName="name" SerializeId="true" MonikerElementName="featureElementMoniker" ElementName="featureElement" MonikerTypeName="FeatureElementMoniker">
        <DomainClassMoniker Name="FeatureElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="FeatureElement/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="sourceOptionalFeatureElement">
            <DomainRelationshipMoniker Name="FeatureElementOptionalReferencesFeatureElement" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="included">
            <DomainPropertyMoniker Name="FeatureElement/Included" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="sourceMandatoryFeatureElement">
            <DomainRelationshipMoniker Name="FeatureElementMandatoryReferencesFeatureElement" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="sourceRequiresFeatureElement">
            <DomainRelationshipMoniker Name="FeatureElementRequiresReferencesFeatureElements" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="FeatureElement/Type" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetExcludeFeatureElements">
            <DomainRelationshipMoniker Name="FeatureElementExcludesReferenceFeatureElement" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="label">
            <DomainPropertyMoniker Name="FeatureElement/Label" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="idFeature">
            <DomainPropertyMoniker Name="FeatureElement/IdFeature" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FeatureModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureModelHasElementsMoniker" ElementName="featureModelHasElements" MonikerTypeName="FeatureModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="FeatureModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureElementOptionalReferencesFeatureElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureElementOptionalReferencesFeatureElementMoniker" ElementName="featureElementOptionalReferencesFeatureElement" MonikerTypeName="FeatureElementOptionalReferencesFeatureElementMoniker">
        <DomainRelationshipMoniker Name="FeatureElementOptionalReferencesFeatureElement" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureShapeMoniker" ElementName="featureShape" MonikerTypeName="FeatureShapeMoniker">
        <GeometryShapeMoniker Name="FeatureShape" />
      </XmlClassData>
      <XmlClassData TypeName="OptionalConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="optionalConnectorMoniker" ElementName="optionalConnector" MonikerTypeName="OptionalConnectorMoniker">
        <ConnectorMoniker Name="OptionalConnector" />
      </XmlClassData>
      <XmlClassData TypeName="SplLanguageDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="splLanguageDiagramMoniker" ElementName="splLanguageDiagram" MonikerTypeName="SplLanguageDiagramMoniker">
        <DiagramMoniker Name="SplLanguageDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureElementMandatoryReferencesFeatureElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureElementMandatoryReferencesFeatureElementMoniker" ElementName="featureElementMandatoryReferencesFeatureElement" MonikerTypeName="FeatureElementMandatoryReferencesFeatureElementMoniker">
        <DomainRelationshipMoniker Name="FeatureElementMandatoryReferencesFeatureElement" />
      </XmlClassData>
      <XmlClassData TypeName="MandatoryConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="mandatoryConnectorMoniker" ElementName="mandatoryConnector" MonikerTypeName="MandatoryConnectorMoniker">
        <ConnectorMoniker Name="MandatoryConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureElementRequiresReferencesFeatureElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureElementRequiresReferencesFeatureElementsMoniker" ElementName="featureElementRequiresReferencesFeatureElements" MonikerTypeName="FeatureElementRequiresReferencesFeatureElementsMoniker">
        <DomainRelationshipMoniker Name="FeatureElementRequiresReferencesFeatureElements" />
      </XmlClassData>
      <XmlClassData TypeName="RequiresConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="requiresConnectorMoniker" ElementName="requiresConnector" MonikerTypeName="RequiresConnectorMoniker">
        <ConnectorMoniker Name="RequiresConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureElementExcludesReferenceFeatureElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureElementExcludesReferenceFeatureElementMoniker" ElementName="featureElementExcludesReferenceFeatureElement" MonikerTypeName="FeatureElementExcludesReferenceFeatureElementMoniker">
        <DomainRelationshipMoniker Name="FeatureElementExcludesReferenceFeatureElement" />
      </XmlClassData>
      <XmlClassData TypeName="ExcludeConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="excludeConnectorMoniker" ElementName="excludeConnector" MonikerTypeName="ExcludeConnectorMoniker">
        <ConnectorMoniker Name="ExcludeConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureAttribute" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureAttributeMoniker" ElementName="featureAttribute" MonikerTypeName="FeatureAttributeMoniker">
        <DomainClassMoniker Name="FeatureAttribute" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="FeatureAttribute/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="domain">
            <DomainPropertyMoniker Name="FeatureAttribute/Domain" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="value">
            <DomainPropertyMoniker Name="FeatureAttribute/Value" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FeatureAttributeShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureAttributeShapeMoniker" ElementName="featureAttributeShape" MonikerTypeName="FeatureAttributeShapeMoniker">
        <GeometryShapeMoniker Name="FeatureAttributeShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="SplLanguageExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="FeatureElementOptionalReferencesFeatureElementBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureElementOptionalReferencesFeatureElement" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FeatureElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FeatureElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FeatureElementMandatoryReferencesFeatureElementBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureElementMandatoryReferencesFeatureElement" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FeatureElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FeatureElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FeatureElementRequiresReferencesFeatureElementsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureElementRequiresReferencesFeatureElements" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FeatureElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FeatureElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FeatureElementExcludesReferenceFeatureElementBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureElementExcludesReferenceFeatureElement" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FeatureElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FeatureElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="6b900dfb-d311-439e-9e49-49fb7002df41" Description="Description for Company.SplLanguage.SplLanguageDiagram" Name="SplLanguageDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.SplLanguage">
    <Class>
      <DomainClassMoniker Name="FeatureModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="FeatureElement" />
        <ParentElementPath>
          <DomainPath>FeatureModelHasElements.FeatureModel/!FeatureModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FeatureShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="FeatureElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="FeatureShape/IncludedDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="FeatureElement/Included" />
          </VisibilityPropertyPath>
        </DecoratorMap>
        <GeometryShapeMoniker Name="FeatureShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="OptionalConnector" />
        <DomainRelationshipMoniker Name="FeatureElementOptionalReferencesFeatureElement" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MandatoryConnector" />
        <DomainRelationshipMoniker Name="FeatureElementMandatoryReferencesFeatureElement" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="RequiresConnector" />
        <DomainRelationshipMoniker Name="FeatureElementRequiresReferencesFeatureElements" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ExcludeConnector" />
        <DomainRelationshipMoniker Name="FeatureElementExcludesReferenceFeatureElement" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="SplLanguage" EditorGuid="aab0177a-6704-4fce-9dee-dcc789321e57">
    <RootClass>
      <DomainClassMoniker Name="FeatureModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="SplLanguageSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="SplLanguage">
      <ElementTool Name="FeatureElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="Feature Element" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="FeatureElement" />
      </ElementTool>
      <ConnectionTool Name="OptionalRelationship" ToolboxIcon="Resources\OptionalIcon.bmp" Caption="Optional Relationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="SplLanguage/FeatureElementOptionalReferencesFeatureElementBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="MandatoryRelationship" ToolboxIcon="Resources\MandatoryIcon.bmp" Caption="Mandatory Relationship" Tooltip="Mandatory Relationship" HelpKeyword="MandatoryRelationship">
        <ConnectionBuilderMoniker Name="SplLanguage/FeatureElementMandatoryReferencesFeatureElementBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="RequiresRelationship" ToolboxIcon="Resources\RequiresIcon.bmp" Caption="Requires Relationship" Tooltip="Requires Relationship" HelpKeyword="RequiresRelationship">
        <ConnectionBuilderMoniker Name="SplLanguage/FeatureElementRequiresReferencesFeatureElementsBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="ExcludeRelationship" ToolboxIcon="Resources\ExcludesIcon.bmp" Caption="Exclude Relationship" Tooltip="Exclude Relationship" HelpKeyword="ExcludeRelationship">
        <ConnectionBuilderMoniker Name="SplLanguage/FeatureElementExcludesReferenceFeatureElementBuilder" />
      </ConnectionTool>
      <ElementTool Name="FetureAttribute" ToolboxIcon="Resources\AttributeIcon.bmp" Caption="Feture AttributeElement" Tooltip="Feture Attribute" HelpKeyword="FetureAttribute">
        <DomainClassMoniker Name="FeatureAttribute" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="SplLanguageDiagram" />
  </Designer>
  <Explorer ExplorerGuid="fc1481ca-6c14-4994-97de-6423c213cb1c" Title="SplLanguage Explorer">
    <ExplorerBehaviorMoniker Name="SplLanguage/SplLanguageExplorer" />
  </Explorer>
</Dsl>