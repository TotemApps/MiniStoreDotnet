<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="4d341d8c-bcbb-47a7-bde6-941fbd251ba5" Description="Description for Company.LabDslE.LabDslE" Name="LabDslE" DisplayName="LabDslE" Namespace="Company.LabDslE" ProductName="LabDslE" CompanyName="Company" PackageGuid="5090cb56-7f40-4eed-bd79-9e0284e26410" PackageNamespace="Company.LabDslE" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="69bf5bc0-b848-4bf1-ae73-235ac69fb77d" Description="The root in which all other elements are embedded. Appears as a diagram." Name="FeatureModel" DisplayName="Feature Model" Namespace="Company.LabDslE">
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
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="AbstractFeature" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FeatureModelHasAbstractFeatured.AbstractFeatured</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="47d1e017-e544-4d18-9f15-0c0d74aab5ce" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="FeatureElement" DisplayName="Feature Element" Namespace="Company.LabDslE">
      <Properties>
        <DomainProperty Id="88852f33-9753-4157-b429-68ba33967cd7" Description="Description for Company.LabDslE.FeatureElement.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="2b6923fc-2f9d-4f56-a9ec-67491a50a2a8" Description="Description for Company.LabDslE.AbstractFeature" Name="AbstractFeature" DisplayName="Abstract Feature" Namespace="Company.LabDslE">
      <Properties>
        <DomainProperty Id="b7eeb139-9f1f-4403-b0c9-e23e6c39d83f" Description="Description for Company.LabDslE.AbstractFeature.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0b816f0b-d6a1-4681-beb1-4c400857fbcd" Description="Description for Company.LabDslE.AbstractFeature.Caption" Name="Caption" DisplayName="Caption">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="df6f62a4-9847-4554-8156-e1a546c5e847" Description="Embedding relationship between the Model and Elements" Name="FeatureModelHasElements" DisplayName="Feature Model Has Elements" Namespace="Company.LabDslE" IsEmbedding="true">
      <Source>
        <DomainRole Id="aa0343c0-3379-4098-aeae-1b306675397d" Description="" Name="FeatureModel" DisplayName="Feature Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ec309e50-f5ac-4786-aa14-c1e59ec30801" Description="" Name="Element" DisplayName="Element" PropertyName="FeatureModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Feature Model">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="80657553-7092-4e14-82c2-9242a14bea89" Description="Reference relationship between Elements." Name="FeatureElementReferencesTargets" DisplayName="Feature Element References Targets" Namespace="Company.LabDslE">
      <Source>
        <DomainRole Id="0659727b-feef-4a10-94dc-4a692773c25a" Description="Description for Company.LabDslE.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ef075d83-a1c0-4541-9b2c-15584eeaa183" Description="Description for Company.LabDslE.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="80cdbf9a-145c-4044-a50a-4b5425ffd70b" Description="Description for Company.LabDslE.FeatureModelHasAbstractFeatured" Name="FeatureModelHasAbstractFeatured" DisplayName="Feature Model Has Abstract Featured" Namespace="Company.LabDslE" IsEmbedding="true">
      <Source>
        <DomainRole Id="1e971aa6-bc9b-44eb-b384-8eb377fb6add" Description="Description for Company.LabDslE.FeatureModelHasAbstractFeatured.FeatureModel" Name="FeatureModel" DisplayName="Feature Model" PropertyName="AbstractFeatured" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Abstract Featured">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="0e1ca949-c138-4b2a-a91c-9a09fe97a2b4" Description="Description for Company.LabDslE.FeatureModelHasAbstractFeatured.AbstractFeature" Name="AbstractFeature" DisplayName="Abstract Feature" PropertyName="FeatureModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Feature Model">
          <RolePlayer>
            <DomainClassMoniker Name="AbstractFeature" />
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
  </Types>
  <Shapes>
    <GeometryShape Id="6b775c77-5401-46bf-a4d4-503dec4ba865" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="Company.LabDslE" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="a15ae773-1df1-4890-be03-d3f0c5448f57" Description="Description for Company.LabDslE.AbstractFeatureShape" Name="AbstractFeatureShape" DisplayName="Abstract Feature Shape" Namespace="Company.LabDslE" FixedTooltipText="Abstract Feature Shape" InitialHeight="1" Geometry="Rectangle" />
  </Shapes>
  <Connectors>
    <Connector Id="4c41566f-eb29-4b4b-bc19-d0efa26d93c2" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="Company.LabDslE" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="LabDslESerializationBehavior" Namespace="Company.LabDslE">
    <ClassData>
      <XmlClassData TypeName="FeatureModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureModelMoniker" ElementName="featureModel" MonikerTypeName="FeatureModelMoniker">
        <DomainClassMoniker Name="FeatureModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="FeatureModelHasElements" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="abstractFeatured">
            <DomainRelationshipMoniker Name="FeatureModelHasAbstractFeatured" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FeatureElement" MonikerAttributeName="name" SerializeId="true" MonikerElementName="featureElementMoniker" ElementName="featureElement" MonikerTypeName="FeatureElementMoniker">
        <DomainClassMoniker Name="FeatureElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="FeatureElement/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FeatureModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureModelHasElementsMoniker" ElementName="featureModelHasElements" MonikerTypeName="FeatureModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="FeatureModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureElementReferencesTargets" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureElementReferencesTargetsMoniker" ElementName="featureElementReferencesTargets" MonikerTypeName="FeatureElementReferencesTargetsMoniker">
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleShapeMoniker" ElementName="exampleShape" MonikerTypeName="ExampleShapeMoniker">
        <GeometryShapeMoniker Name="ExampleShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="LabDslEDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="labDslEDiagramMoniker" ElementName="labDslEDiagram" MonikerTypeName="LabDslEDiagramMoniker">
        <DiagramMoniker Name="LabDslEDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="AbstractFeature" MonikerAttributeName="" SerializeId="true" MonikerElementName="abstractFeatureMoniker" ElementName="abstractFeature" MonikerTypeName="AbstractFeatureMoniker">
        <DomainClassMoniker Name="AbstractFeature" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="AbstractFeature/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="caption">
            <DomainPropertyMoniker Name="AbstractFeature/Caption" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AbstractFeatureShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="abstractFeatureShapeMoniker" ElementName="abstractFeatureShape" MonikerTypeName="AbstractFeatureShapeMoniker">
        <GeometryShapeMoniker Name="AbstractFeatureShape" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureModelHasAbstractFeatured" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureModelHasAbstractFeaturedMoniker" ElementName="featureModelHasAbstractFeatured" MonikerTypeName="FeatureModelHasAbstractFeaturedMoniker">
        <DomainRelationshipMoniker Name="FeatureModelHasAbstractFeatured" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="LabDslEExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="FeatureElementReferencesTargetsBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
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
  <Diagram Id="1a7e692b-f959-412c-8998-219947a6bc40" Description="Description for Company.LabDslE.LabDslEDiagram" Name="LabDslEDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.LabDslE">
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
          <TextDecoratorMoniker Name="ExampleShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="FeatureElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="AbstractFeature" />
        <ParentElementPath>
          <DomainPath>FeatureModelHasAbstractFeatured.FeatureModel/!FeatureModel</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="AbstractFeatureShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="LabDslE" EditorGuid="a7acb882-8d0a-4b1a-9a6d-d41f8925a940">
    <RootClass>
      <DomainClassMoniker Name="FeatureModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="LabDslESerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="LabDslE">
      <ElementTool Name="FeatureElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="Feature Element" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="FeatureElement" />
      </ElementTool>
      <ConnectionTool Name="OptionalRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="Optional Relationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="LabDslE/FeatureElementReferencesTargetsBuilder" />
      </ConnectionTool>
      <ElementTool Name="AbstractFeatureTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AbstractFeatureTool" Tooltip="Abstract Feature Tool" HelpKeyword="AbstractFeatureTool">
        <DomainClassMoniker Name="AbstractFeature" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="LabDslEDiagram" />
  </Designer>
  <Explorer ExplorerGuid="262882aa-4b2a-4477-b1ae-660fd5d99924" Title="LabDslE Explorer">
    <ExplorerBehaviorMoniker Name="LabDslE/LabDslEExplorer" />
  </Explorer>
</Dsl>