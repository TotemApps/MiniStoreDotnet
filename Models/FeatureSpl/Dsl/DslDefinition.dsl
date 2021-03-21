<?xml version="1.0" encoding="utf-8"?>
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
        <DomainProperty Id="eb0d64dc-c8fd-460f-8786-77427ca3049a" Description="Description for Company.FeatureSpl.FeatureElement.Is Root" Name="IsRoot" DisplayName="Is Root" DefaultValue="false">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="8e4b9269-f2df-4207-8380-d0efa0164baa" Description="Description for Company.FeatureSpl.RootFeatureElement" Name="RootFeatureElement" DisplayName="Root Feature Element" Namespace="Company.FeatureSpl">
      <BaseClass>
        <DomainClassMoniker Name="FeatureElement" />
      </BaseClass>
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
    <DomainRelationship Id="7dff9289-8d36-4ccc-a847-cc66d76f6154" Description="Description for Company.FeatureSpl.RootFeatureElementReferencesFeatureElements" Name="RootFeatureElementReferencesFeatureElements" DisplayName="Root Feature Element References Feature Elements" Namespace="Company.FeatureSpl">
      <Source>
        <DomainRole Id="4d1b5024-7ef9-4275-8ce9-22294e084bab" Description="Description for Company.FeatureSpl.RootFeatureElementReferencesFeatureElements.RootFeatureElement" Name="RootFeatureElement" DisplayName="Root Feature Element" PropertyName="FeatureElements" PropertyDisplayName="Feature Elements">
          <RolePlayer>
            <DomainClassMoniker Name="RootFeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="8a8ebe58-07e6-49d7-ad99-c23f06730adf" Description="Description for Company.FeatureSpl.RootFeatureElementReferencesFeatureElements.FeatureElement" Name="FeatureElement" DisplayName="Feature Element" PropertyName="RootFeatureElements" PropertyDisplayName="Root Feature Elements">
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
    <GeometryShape Id="d3f421c3-1293-48f4-965c-4e8669455f8f" Description="Description for Company.FeatureSpl.RootFeatureShape" Name="RootFeatureShape" DisplayName="Root Feature Shape" Namespace="Company.FeatureSpl" FixedTooltipText="Root Feature Shape" InitialHeight="1" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="FeatureShape" />
      </BaseGeometryShape>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="eac9d3a5-dd72-4084-bd71-29a5e67bd89d" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="OptionalConnector" DisplayName="Optional Connector" Namespace="Company.FeatureSpl" FixedTooltipText="Optional Connector" Color="113, 111, 110" TargetEndStyle="EmptyDiamond" Thickness="0.01" RoutingStyle="Straight" />
    <Connector Id="3463a5cf-7913-49bd-9d5b-2f750c49ea95" Description="Description for Company.FeatureSpl.MandatoryConnector" Name="MandatoryConnector" DisplayName="Mandatory Connector" Namespace="Company.FeatureSpl" FixedTooltipText="Mandatory Connector" />
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
          <XmlPropertyData XmlName="isRoot">
            <DomainPropertyMoniker Name="FeatureElement/IsRoot" />
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
      <XmlClassData TypeName="RootFeatureShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="rootFeatureShapeMoniker" ElementName="rootFeatureShape" MonikerTypeName="RootFeatureShapeMoniker">
        <GeometryShapeMoniker Name="RootFeatureShape" />
      </XmlClassData>
      <XmlClassData TypeName="RootFeatureElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="rootFeatureElementMoniker" ElementName="rootFeatureElement" MonikerTypeName="RootFeatureElementMoniker">
        <DomainClassMoniker Name="RootFeatureElement" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="featureElements">
            <DomainRelationshipMoniker Name="RootFeatureElementReferencesFeatureElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="RootFeatureElementReferencesFeatureElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="rootFeatureElementReferencesFeatureElementsMoniker" ElementName="rootFeatureElementReferencesFeatureElements" MonikerTypeName="RootFeatureElementReferencesFeatureElementsMoniker">
        <DomainRelationshipMoniker Name="RootFeatureElementReferencesFeatureElements" />
      </XmlClassData>
      <XmlClassData TypeName="MandatoryConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="mandatoryConnectorMoniker" ElementName="mandatoryConnector" MonikerTypeName="MandatoryConnectorMoniker">
        <ConnectorMoniker Name="MandatoryConnector" />
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
    <ConnectionBuilder Name="RootFeatureElementReferencesFeatureElementsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="RootFeatureElementReferencesFeatureElements" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="RootFeatureElement" />
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
      <ShapeMap>
        <DomainClassMoniker Name="RootFeatureElement" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="RootFeatureShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="OptionalConnector" />
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MandatoryConnector" />
        <DomainRelationshipMoniker Name="RootFeatureElementReferencesFeatureElements" />
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
      <ElementTool Name="FeatureElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="FeatureElement" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="FeatureElement" />
      </ElementTool>
      <ConnectionTool Name="OptionalRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="OptionalRelationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="FeatureSpl/FeatureElementReferencesTargetsBuilder" />
      </ConnectionTool>
      <ElementTool Name="RootFeatureElement" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="RootFeatureElement" Tooltip="Root Feature Element" HelpKeyword="RootFeatureElement">
        <DomainClassMoniker Name="RootFeatureElement" />
      </ElementTool>
      <ConnectionTool Name="MandatoryRelationship" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="MandatoryRelationship" Tooltip="Mandatory Relationship" HelpKeyword="MandatoryRelationship">
        <ConnectionBuilderMoniker Name="FeatureSpl/RootFeatureElementReferencesFeatureElementsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="FeatureSplDiagram" />
  </Designer>
  <Explorer ExplorerGuid="0c3f615f-1258-4531-9795-629737cc695f" Title="FeatureSpl Explorer">
    <ExplorerBehaviorMoniker Name="FeatureSpl/FeatureSplExplorer" />
  </Explorer>
</Dsl>