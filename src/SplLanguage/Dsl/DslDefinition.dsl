<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="facb6603-969d-41da-ace4-527ddac22cc3" Description="Description for Company.SplLanguage.SplLanguage" Name="SplLanguage" DisplayName="SplLanguage" Namespace="Company.SplLanguage" ProductName="Features" CompanyName="Variamos" PackageGuid="73551e97-f942-45a6-89f0-12e006505e80" PackageNamespace="Company.SplLanguage" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="7d6e993b-40d2-40e8-844b-f90a63c6b8e2" Description="The root in which all other elements are embedded. Appears as a diagram." Name="FeatureModel" DisplayName="Feature Model" Namespace="Company.SplLanguage">
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
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="f0b7116b-612f-46cc-98dc-ebaa03cd1db6" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="Company.SplLanguage" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="SplLanguageSerializationBehavior" Namespace="Company.SplLanguage">
    <ClassData>
      <XmlClassData TypeName="FeatureModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="featureModelMoniker" ElementName="featureModel" MonikerTypeName="FeatureModelMoniker">
        <DomainClassMoniker Name="FeatureModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="FeatureModelHasElements" />
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
      <XmlClassData TypeName="SplLanguageDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="splLanguageDiagramMoniker" ElementName="splLanguageDiagram" MonikerTypeName="SplLanguageDiagramMoniker">
        <DiagramMoniker Name="SplLanguageDiagram" />
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
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="FeatureElementReferencesTargets" />
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
      <ElementTool Name="ExampleElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="Feature Element" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="FeatureElement" />
      </ElementTool>
      <ConnectionTool Name="ExampleRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="Relationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="SplLanguage/FeatureElementReferencesTargetsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="SplLanguageDiagram" />
  </Designer>
  <Explorer ExplorerGuid="fc1481ca-6c14-4994-97de-6423c213cb1c" Title="SplLanguage Explorer">
    <ExplorerBehaviorMoniker Name="SplLanguage/SplLanguageExplorer" />
  </Explorer>
</Dsl>