﻿<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="34370f62-73df-4d65-81bb-c3814c0674a5" Description="Description for Company.FeatureSpl.FeatureSpl" Name="FeatureSpl" DisplayName="FeatureSpl" Namespace="Company.FeatureSpl" ProductName="Ministore" CompanyName="Variamos" PackageGuid="6fb3ec30-432b-428f-97bd-990c443a15f0" PackageNamespace="Company.FeatureSpl" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="49d0e97f-33a1-400f-bf80-d5d26cbabcd0" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Company.FeatureSpl">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="FeatureElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="73c143fb-6396-4b37-a09f-5316e9138d9d" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="FeatureElement" DisplayName="Feature Element" Namespace="Company.FeatureSpl">
      <Properties>
        <DomainProperty Id="06ccb129-1958-4cab-b780-d5e93de421dc" Description="Description for Company.FeatureSpl.FeatureElement.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="46842e36-dc2b-466f-ac2e-b00568b67229" Description="Description for Company.FeatureSpl.FeatureElement.Included" Name="Included" DisplayName="Included">
          <Notes>Indicates if the feature will be included in the product</Notes>
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="09a12265-6df0-4262-8ef5-6bd937c0931f" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Company.FeatureSpl" IsEmbedding="true">
      <Source>
        <DomainRole Id="82898180-5402-4533-b4af-ccaced926f60" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="90cca33c-9f8b-4058-950f-72362a3cc897" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="37425e3c-839f-442a-a229-dd5b79574082" Description="Reference relationship between Elements." Name="FeatureElementReferencesTargets" DisplayName="Feature Element References Targets" Namespace="Company.FeatureSpl">
      <Source>
        <DomainRole Id="7707123b-633e-4ab2-9c56-efae0a149a7f" Description="Description for Company.FeatureSpl.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="53940d0d-1505-44fe-9ff3-598df9b3e4a1" Description="Description for Company.FeatureSpl.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
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
  </Types>
  <Shapes>
    <GeometryShape Id="c9e6b9ca-d203-4618-bef0-99e1870fd80d" Description="Shape used to represent ExampleElements on a Diagram." Name="FeatureShape" DisplayName="Feature Shape" Namespace="Company.FeatureSpl" FixedTooltipText="Feature Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="IncludedDecorator" DisplayName="Included Decorator" DefaultIcon="Resources\SelectedIcon.bmp" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="eac9d3a5-dd72-4084-bd71-29a5e67bd89d" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="OptionalConnector" DisplayName="Optional Connector" Namespace="Company.FeatureSpl" FixedTooltipText="Optional Connector" Color="113, 111, 110" TargetEndStyle="EmptyDiamond" Thickness="0.01" RoutingStyle="Straight" />
  </Connectors>
  <XmlSerializationBehavior Name="FeatureSplSerializationBehavior" Namespace="Company.FeatureSpl">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
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
          <XmlPropertyData XmlName="included">
            <DomainPropertyMoniker Name="FeatureElement/Included" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureElementReferencesTargets" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureElementReferencesTargetsMoniker" ElementName="featureElementReferencesTargets" MonikerTypeName="FeatureElementReferencesTargetsMoniker">
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureShapeMoniker" ElementName="featureShape" MonikerTypeName="FeatureShapeMoniker">
        <GeometryShapeMoniker Name="FeatureShape" />
      </XmlClassData>
      <XmlClassData TypeName="OptionalConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="optionalConnectorMoniker" ElementName="optionalConnector" MonikerTypeName="OptionalConnectorMoniker">
        <ConnectorMoniker Name="OptionalConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureSplDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureSplDiagramMoniker" ElementName="featureSplDiagram" MonikerTypeName="FeatureSplDiagramMoniker">
        <DiagramMoniker Name="FeatureSplDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="FeatureSplExplorer" />
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
  <Diagram Id="6b879616-17b1-4b96-b185-2c31f4e047ce" Description="Description for Company.FeatureSpl.FeatureSplDiagram" Name="FeatureSplDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.FeatureSpl">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="FeatureElement" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
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
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="feature" EditorGuid="81d59881-6d4c-4d3c-b590-f3eedeef0fdf">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="FeatureSplSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="FeatureSpl">
      <ElementTool Name="ExampleElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="ExampleElement" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="FeatureElement" />
      </ElementTool>
      <ConnectionTool Name="ExampleRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="ExampleRelationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="FeatureSpl/FeatureElementReferencesTargetsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="FeatureSplDiagram" />
  </Designer>
  <Explorer ExplorerGuid="0c3f615f-1258-4531-9795-629737cc695f" Title="FeatureSpl Explorer">
    <ExplorerBehaviorMoniker Name="FeatureSpl/FeatureSplExplorer" />
  </Explorer>
</Dsl>