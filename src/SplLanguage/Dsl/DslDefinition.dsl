<?xml version="1.0" encoding="utf-8"?>
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
    <DomainRelationship Id="20b619db-33d1-485b-9cac-5c3d29f9c491" Description="Reference relationship between Elements." Name="FeatureElementReferencesTargets" DisplayName="Feature Element References Targets" Namespace="Company.SplLanguage">
      <Source>
        <DomainRole Id="c8080e7a-3c3a-42e5-802b-4a0f37d1d9c5" Description="Description for Company.SplLanguage.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="81e849b8-dbac-47e0-9046-ee0e3effd589" Description="Description for Company.SplLanguage.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="9d57ccb1-6b0e-4a45-9dc2-9f117a026a92" Description="Description for Company.SplLanguage.FeatureElementReferencesTargetFeatureElements" Name="FeatureElementReferencesTargetFeatureElements" DisplayName="Feature Element References Target Feature Elements" Namespace="Company.SplLanguage">
      <Source>
        <DomainRole Id="ba943ae6-8ff8-4a6d-b9b6-0849c375144b" Description="Description for Company.SplLanguage.FeatureElementReferencesTargetFeatureElements.SourceFeatureElement" Name="SourceFeatureElement" DisplayName="Source Feature Element" PropertyName="TargetFeatureElements" PropertyDisplayName="Target Feature Elements">
          <RolePlayer>
            <DomainClassMoniker Name="FeatureElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="da45bd39-cb08-420f-9637-5908e9b2f49f" Description="Description for Company.SplLanguage.FeatureElementReferencesTargetFeatureElements.TargetFeatureElement" Name="TargetFeatureElement" DisplayName="Target Feature Element" PropertyName="SourceFeatureElements" PropertyDisplayName="Source Feature Elements">
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
    <GeometryShape Id="828ca0d5-7a5e-414a-adb6-d8b8b144cc01" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="Company.SplLanguage" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
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
    <Connector Id="f0b7116b-612f-46cc-98dc-ebaa03cd1db6" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="Company.SplLanguage" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyDiamond" Thickness="0.01" RoutingStyle="Straight" />
    <Connector Id="b33c28f5-07e2-4271-9171-b8b4b6132bab" Description="Description for Company.SplLanguage.MandatoryConnector" Name="MandatoryConnector" DisplayName="Mandatory Connector" Namespace="Company.SplLanguage" FixedTooltipText="Mandatory Connector" TargetEndStyle="FilledDiamond" Thickness="0.01" RoutingStyle="Straight" />
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
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="included">
            <DomainPropertyMoniker Name="FeatureElement/Included" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetFeatureElements">
            <DomainRelationshipMoniker Name="FeatureElementReferencesTargetFeatureElements" />
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
      <XmlClassData TypeName="SplLanguageDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="splLanguageDiagramMoniker" ElementName="splLanguageDiagram" MonikerTypeName="SplLanguageDiagramMoniker">
        <DiagramMoniker Name="SplLanguageDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="FeatureElementReferencesTargetFeatureElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureElementReferencesTargetFeatureElementsMoniker" ElementName="featureElementReferencesTargetFeatureElements" MonikerTypeName="FeatureElementReferencesTargetFeatureElementsMoniker">
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargetFeatureElements" />
      </XmlClassData>
      <XmlClassData TypeName="MandatoryConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="mandatoryConnectorMoniker" ElementName="mandatoryConnector" MonikerTypeName="MandatoryConnectorMoniker">
        <ConnectorMoniker Name="MandatoryConnector" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="SplLanguageExplorer" />
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
    <ConnectionBuilder Name="FeatureElementReferencesTargetFeatureElementsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargetFeatureElements" />
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
          <TextDecoratorMoniker Name="ExampleShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="FeatureElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="ExampleShape/IncludedDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="FeatureElement/Included" />
          </VisibilityPropertyPath>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="MandatoryConnector" />
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargetFeatureElements" />
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
      <ConnectionTool Name="OptionalRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="Optional Relationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="SplLanguage/FeatureElementReferencesTargetsBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="MandatoryRelationship" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Mandatory Relationship" Tooltip="Mandatory Relationship" HelpKeyword="MandatoryRelationship">
        <ConnectionBuilderMoniker Name="SplLanguage/FeatureElementReferencesTargetFeatureElementsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="SplLanguageDiagram" />
  </Designer>
  <Explorer ExplorerGuid="fc1481ca-6c14-4994-97de-6423c213cb1c" Title="SplLanguage Explorer">
    <ExplorerBehaviorMoniker Name="SplLanguage/SplLanguageExplorer" />
  </Explorer>
</Dsl>