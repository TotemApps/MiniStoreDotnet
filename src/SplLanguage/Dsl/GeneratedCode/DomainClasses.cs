﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
namespace Company.SplLanguage
{
	/// <summary>
	/// DomainClass FeatureModel
	/// The root in which all other elements are embedded. Appears as a diagram.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.SplLanguage.FeatureModel.DisplayName", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.SplLanguage.FeatureModel.Description", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.SplLanguage.SplLanguageDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("7d6e993b-40d2-40e8-844b-f90a63c6b8e2")]
	public partial class FeatureModel : DslModeling::ModelElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// FeatureModel domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x7d6e993b, 0x40d2, 0x40e8, 0x84, 0x4b, 0xf9, 0x0a, 0x63, 0xc6, 0xb8, 0xe2);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public FeatureModel(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public FeatureModel(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Name domain property code
		
		/// <summary>
		/// Name domain property Id.
		/// </summary>
		public static readonly global::System.Guid NameDomainPropertyId = new global::System.Guid(0x902db19c, 0x67ed, 0x4e50, 0x9c, 0x37, 0x08, 0x55, 0x35, 0xf7, 0x00, 0x2b);
		
		/// <summary>
		/// Storage for Name
		/// </summary>
		private global::System.String namePropertyStorage = string.Empty;
		
		/// <summary>
		/// Gets or sets the value of Name domain property.
		/// Description for Company.SplLanguage.FeatureModel.Name
		/// </summary>
		[DslDesign::DisplayNameResource("Company.SplLanguage.FeatureModel/Name.DisplayName", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.SplLanguage.FeatureModel/Name.Description", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainObjectId("902db19c-67ed-4e50-9c37-085535f7002b")]
		public global::System.String Name
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return namePropertyStorage;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				NamePropertyHandler.Instance.SetValue(this, value);
			}
		}
		/// <summary>
		/// Value handler for the FeatureModel.Name domain property.
		/// </summary>
		internal sealed partial class NamePropertyHandler : DslModeling::DomainPropertyValueHandler<FeatureModel, global::System.String>
		{
			private NamePropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the FeatureModel.Name domain property value handler.
			/// </summary>
			public static readonly NamePropertyHandler Instance = new NamePropertyHandler();
		
			/// <summary>
			/// Gets the Id of the FeatureModel.Name domain property.
			/// </summary>
			public sealed override global::System.Guid DomainPropertyId
			{
				[global::System.Diagnostics.DebuggerStepThrough]
				get
				{
					return NameDomainPropertyId;
				}
			}
			
			/// <summary>
			/// Gets a strongly-typed value of the property on specified element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <returns>Property value.</returns>
			public override sealed global::System.String GetValue(FeatureModel element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.namePropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(FeatureModel element, global::System.String newValue)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
		
				global::System.String oldValue = GetValue(element);
				if (newValue != oldValue)
				{
					ValueChanging(element, oldValue, newValue);
					element.namePropertyStorage = newValue;
					ValueChanged(element, oldValue, newValue);
				}
			}
		}
		
		#endregion
		#region Description domain property code
		
		/// <summary>
		/// Description domain property Id.
		/// </summary>
		public static readonly global::System.Guid DescriptionDomainPropertyId = new global::System.Guid(0x9835d294, 0x432f, 0x486c, 0xb9, 0xf7, 0x80, 0x21, 0xf1, 0x1f, 0x75, 0x64);
		
		/// <summary>
		/// Storage for Description
		/// </summary>
		private global::System.String descriptionPropertyStorage = string.Empty;
		
		/// <summary>
		/// Gets or sets the value of Description domain property.
		/// Description for Company.SplLanguage.FeatureModel.Description
		/// </summary>
		[DslDesign::DisplayNameResource("Company.SplLanguage.FeatureModel/Description.DisplayName", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.SplLanguage.FeatureModel/Description.Description", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainObjectId("9835d294-432f-486c-b9f7-8021f11f7564")]
		public global::System.String Description
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return descriptionPropertyStorage;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DescriptionPropertyHandler.Instance.SetValue(this, value);
			}
		}
		/// <summary>
		/// Value handler for the FeatureModel.Description domain property.
		/// </summary>
		internal sealed partial class DescriptionPropertyHandler : DslModeling::DomainPropertyValueHandler<FeatureModel, global::System.String>
		{
			private DescriptionPropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the FeatureModel.Description domain property value handler.
			/// </summary>
			public static readonly DescriptionPropertyHandler Instance = new DescriptionPropertyHandler();
		
			/// <summary>
			/// Gets the Id of the FeatureModel.Description domain property.
			/// </summary>
			public sealed override global::System.Guid DomainPropertyId
			{
				[global::System.Diagnostics.DebuggerStepThrough]
				get
				{
					return DescriptionDomainPropertyId;
				}
			}
			
			/// <summary>
			/// Gets a strongly-typed value of the property on specified element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <returns>Property value.</returns>
			public override sealed global::System.String GetValue(FeatureModel element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.descriptionPropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(FeatureModel element, global::System.String newValue)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
		
				global::System.String oldValue = GetValue(element);
				if (newValue != oldValue)
				{
					ValueChanging(element, oldValue, newValue);
					element.descriptionPropertyStorage = newValue;
					ValueChanged(element, oldValue, newValue);
				}
			}
		}
		
		#endregion
		#region Elements opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Elements.
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> Elements
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.SplLanguage.FeatureModelHasElements.FeatureModelDomainRoleId);
			}
		}
		#endregion
		#region ElementGroupPrototype Merge methods
		/// <summary>
		/// Returns a value indicating whether the source element represented by the
		/// specified root ProtoElement can be added to this element.
		/// </summary>
		/// <param name="rootElement">
		/// The root ProtoElement representing a source element.  This can be null, 
		/// in which case the ElementGroupPrototype does not contain an ProtoElements
		/// and the code should inspect the ElementGroupPrototype context information.
		/// </param>
		/// <param name="elementGroupPrototype">The ElementGroupPrototype that contains the root ProtoElement.</param>
		/// <returns>true if the source element represented by the ProtoElement can be added to this target element.</returns>
		protected override bool CanMerge(DslModeling::ProtoElementBase rootElement, DslModeling::ElementGroupPrototype elementGroupPrototype)
		{
			if ( elementGroupPrototype == null ) throw new global::System.ArgumentNullException("elementGroupPrototype");
			
			if (rootElement != null)
			{
				DslModeling::DomainClassInfo rootElementDomainInfo = this.Partition.DomainDataDirectory.GetDomainClass(rootElement.DomainClassId);
				
				if (rootElementDomainInfo.IsDerivedFrom(global::Company.SplLanguage.FeatureElement.DomainClassId)) 
				{
					return true;
				}
			}
			return base.CanMerge(rootElement, elementGroupPrototype);
		}
		
		/// <summary>
		/// Called by the Merge process to create a relationship between 
		/// this target element and the specified source element. 
		/// Typically, a parent-child relationship is established
		/// between the target element (the parent) and the source element 
		/// (the child), but any relationship can be established.
		/// </summary>
		/// <param name="sourceElement">The element that is to be related to this model element.</param>
		/// <param name="elementGroup">The group of source ModelElements that have been rehydrated into the target store.</param>
		/// <remarks>
		/// This method is overriden to create the relationship between the target element and the specified source element.
		/// The base method does nothing.
		/// </remarks>
		protected override void MergeRelate(DslModeling::ModelElement sourceElement, DslModeling::ElementGroup elementGroup)
		{
			// In general, sourceElement is allowed to be null, meaning that the elementGroup must be parsed for special cases.
			// However this is not supported in generated code.  Use double-deriving on this class and then override MergeRelate completely if you 
			// need to support this case.
			if ( sourceElement == null ) throw new global::System.ArgumentNullException("sourceElement");
		
				
			global::Company.SplLanguage.FeatureElement sourceFeatureElement1 = sourceElement as global::Company.SplLanguage.FeatureElement;
			if (sourceFeatureElement1 != null)
			{
				// Create link for path FeatureModelHasElements.Elements
				this.Elements.Add(sourceFeatureElement1);

				return;
			}
		
			// Sdk workaround to runtime bug #879350 (DSL: can't copy and paste a MEL that has a MEX). Avoid MergeRelate on ModelElementExtension
			// during a "Paste".
			if (sourceElement is DslModeling::ExtensionElement
				&& sourceElement.Store.TransactionManager.CurrentTransaction.TopLevelTransaction.Context.ContextInfo.ContainsKey("{9DAFD42A-DC0E-4d78-8C3F-8266B2CF8B33}"))
			{
				return;
			}
		
			// Fall through to base class if this class hasn't handled the merge.
			base.MergeRelate(sourceElement, elementGroup);
		}
		
		/// <summary>
		/// Performs operation opposite to MergeRelate - i.e. disconnects a given
		/// element from the current one (removes links created by MergeRelate).
		/// </summary>
		/// <param name="sourceElement">Element to be unmerged/disconnected.</param>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
		protected override void MergeDisconnect(DslModeling::ModelElement sourceElement)
		{
			if (sourceElement == null) throw new global::System.ArgumentNullException("sourceElement");
				
			global::Company.SplLanguage.FeatureElement sourceFeatureElement1 = sourceElement as global::Company.SplLanguage.FeatureElement;
			if (sourceFeatureElement1 != null)
			{
				// Delete link for path FeatureModelHasElements.Elements
				
				foreach (DslModeling::ElementLink link in global::Company.SplLanguage.FeatureModelHasElements.GetLinks((global::Company.SplLanguage.FeatureModel)this, sourceFeatureElement1))
				{
					// Delete the link, but without possible delete propagation to the element since it's moving to a new location.
					link.Delete(global::Company.SplLanguage.FeatureModelHasElements.FeatureModelDomainRoleId, global::Company.SplLanguage.FeatureModelHasElements.ElementDomainRoleId);
				}

				return;
			}
			// Fall through to base class if this class hasn't handled the unmerge.
			base.MergeDisconnect(sourceElement);
		}
		#endregion
	}
}
namespace Company.SplLanguage
{
	/// <summary>
	/// DomainClass FeatureElement
	/// Elements embedded in the model. Appear as boxes on the diagram.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.SplLanguage.FeatureElement.DisplayName", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.SplLanguage.FeatureElement.Description", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.SplLanguage.SplLanguageDomainModel))]
	[global::System.CLSCompliant(true)]
	[global::System.Diagnostics.DebuggerDisplay("{GetType().Name,nq} (Name = {namePropertyStorage})")]
	[DslModeling::DomainObjectId("40a50281-2f90-462d-a6a7-0522164e04cb")]
	public partial class FeatureElement : DslModeling::ModelElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// FeatureElement domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x40a50281, 0x2f90, 0x462d, 0xa6, 0xa7, 0x05, 0x22, 0x16, 0x4e, 0x04, 0xcb);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public FeatureElement(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public FeatureElement(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Name domain property code
		
		/// <summary>
		/// Name domain property Id.
		/// </summary>
		public static readonly global::System.Guid NameDomainPropertyId = new global::System.Guid(0x083a65c0, 0x9a7e, 0x46de, 0x8c, 0x61, 0xbb, 0x13, 0xa3, 0x04, 0xea, 0x4f);
		
		/// <summary>
		/// Storage for Name
		/// </summary>
		private global::System.String namePropertyStorage = string.Empty;
		
		/// <summary>
		/// Gets or sets the value of Name domain property.
		/// Description for Company.SplLanguage.FeatureElement.Name
		/// </summary>
		[DslDesign::DisplayNameResource("Company.SplLanguage.FeatureElement/Name.DisplayName", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.SplLanguage.FeatureElement/Name.Description", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[global::System.ComponentModel.DefaultValue("")]
		[DslModeling::ElementName]
		[DslModeling::DomainObjectId("083a65c0-9a7e-46de-8c61-bb13a304ea4f")]
		public global::System.String Name
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return namePropertyStorage;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				NamePropertyHandler.Instance.SetValue(this, value);
			}
		}
		/// <summary>
		/// Value handler for the FeatureElement.Name domain property.
		/// </summary>
		internal sealed partial class NamePropertyHandler : DslModeling::DomainPropertyValueHandler<FeatureElement, global::System.String>
		{
			private NamePropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the FeatureElement.Name domain property value handler.
			/// </summary>
			public static readonly NamePropertyHandler Instance = new NamePropertyHandler();
		
			/// <summary>
			/// Gets the Id of the FeatureElement.Name domain property.
			/// </summary>
			public sealed override global::System.Guid DomainPropertyId
			{
				[global::System.Diagnostics.DebuggerStepThrough]
				get
				{
					return NameDomainPropertyId;
				}
			}
			
			/// <summary>
			/// Gets a strongly-typed value of the property on specified element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <returns>Property value.</returns>
			public override sealed global::System.String GetValue(FeatureElement element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.namePropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(FeatureElement element, global::System.String newValue)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
		
				global::System.String oldValue = GetValue(element);
				if (newValue != oldValue)
				{
					ValueChanging(element, oldValue, newValue);
					element.namePropertyStorage = newValue;
					ValueChanged(element, oldValue, newValue);
				}
			}
		}
		
		#endregion
		#region Included domain property code
		
		/// <summary>
		/// Included domain property Id.
		/// </summary>
		public static readonly global::System.Guid IncludedDomainPropertyId = new global::System.Guid(0x0aeac9c5, 0xbf64, 0x4592, 0xb4, 0x21, 0x3a, 0xd8, 0xa4, 0x8d, 0x22, 0xfd);
		
		/// <summary>
		/// Storage for Included
		/// </summary>
		private global::System.Boolean includedPropertyStorage;
		
		/// <summary>
		/// Gets or sets the value of Included domain property.
		/// Description for Company.SplLanguage.FeatureElement.Included
		/// </summary>
		[DslDesign::DisplayNameResource("Company.SplLanguage.FeatureElement/Included.DisplayName", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.SplLanguage.FeatureElement/Included.Description", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainObjectId("0aeac9c5-bf64-4592-b421-3ad8a48d22fd")]
		public global::System.Boolean Included
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return includedPropertyStorage;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				IncludedPropertyHandler.Instance.SetValue(this, value);
			}
		}
		/// <summary>
		/// Value handler for the FeatureElement.Included domain property.
		/// </summary>
		internal sealed partial class IncludedPropertyHandler : DslModeling::DomainPropertyValueHandler<FeatureElement, global::System.Boolean>
		{
			private IncludedPropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the FeatureElement.Included domain property value handler.
			/// </summary>
			public static readonly IncludedPropertyHandler Instance = new IncludedPropertyHandler();
		
			/// <summary>
			/// Gets the Id of the FeatureElement.Included domain property.
			/// </summary>
			public sealed override global::System.Guid DomainPropertyId
			{
				[global::System.Diagnostics.DebuggerStepThrough]
				get
				{
					return IncludedDomainPropertyId;
				}
			}
			
			/// <summary>
			/// Gets a strongly-typed value of the property on specified element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <returns>Property value.</returns>
			public override sealed global::System.Boolean GetValue(FeatureElement element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.includedPropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(FeatureElement element, global::System.Boolean newValue)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
		
				global::System.Boolean oldValue = GetValue(element);
				if (newValue != oldValue)
				{
					ValueChanging(element, oldValue, newValue);
					element.includedPropertyStorage = newValue;
					ValueChanged(element, oldValue, newValue);
				}
			}
		}
		
		#endregion
		#region Type domain property code
		
		/// <summary>
		/// Type domain property Id.
		/// </summary>
		public static readonly global::System.Guid TypeDomainPropertyId = new global::System.Guid(0x06fa5ce3, 0x5517, 0x491c, 0xb2, 0xac, 0x2a, 0x94, 0x45, 0xb7, 0x12, 0x7d);
		
		/// <summary>
		/// Storage for Type
		/// </summary>
		private FeatureType typePropertyStorage;
		
		/// <summary>
		/// Gets or sets the value of Type domain property.
		/// Description for Company.SplLanguage.FeatureElement.Type
		/// </summary>
		[DslDesign::DisplayNameResource("Company.SplLanguage.FeatureElement/Type.DisplayName", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.SplLanguage.FeatureElement/Type.Description", typeof(global::Company.SplLanguage.SplLanguageDomainModel), "Company.SplLanguage.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainObjectId("06fa5ce3-5517-491c-b2ac-2a9445b7127d")]
		public FeatureType Type
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return typePropertyStorage;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				TypePropertyHandler.Instance.SetValue(this, value);
			}
		}
		/// <summary>
		/// Value handler for the FeatureElement.Type domain property.
		/// </summary>
		internal sealed partial class TypePropertyHandler : DslModeling::DomainPropertyValueHandler<FeatureElement, FeatureType>
		{
			private TypePropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the FeatureElement.Type domain property value handler.
			/// </summary>
			public static readonly TypePropertyHandler Instance = new TypePropertyHandler();
		
			/// <summary>
			/// Gets the Id of the FeatureElement.Type domain property.
			/// </summary>
			public sealed override global::System.Guid DomainPropertyId
			{
				[global::System.Diagnostics.DebuggerStepThrough]
				get
				{
					return TypeDomainPropertyId;
				}
			}
			
			/// <summary>
			/// Gets a strongly-typed value of the property on specified element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <returns>Property value.</returns>
			public override sealed FeatureType GetValue(FeatureElement element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.typePropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(FeatureElement element, FeatureType newValue)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
		
				FeatureType oldValue = GetValue(element);
				if (newValue != oldValue)
				{
					ValueChanging(element, oldValue, newValue);
					element.typePropertyStorage = newValue;
					ValueChanged(element, oldValue, newValue);
				}
			}
		}
		
		#endregion
		#region FeatureModel opposite domain role accessor
		/// <summary>
		/// Gets or sets FeatureModel.
		/// </summary>
		public virtual FeatureModel FeatureModel
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return DslModeling::DomainRoleInfo.GetLinkedElement(this, global::Company.SplLanguage.FeatureModelHasElements.ElementDomainRoleId) as FeatureModel;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetLinkedElement(this, global::Company.SplLanguage.FeatureModelHasElements.ElementDomainRoleId, value);
			}
		}
		#endregion
		#region SourceOptionalFeatureElement opposite domain role accessor
		
		/// <summary>
		/// Gets a list of SourceOptionalFeatureElement.
		/// Description for Company.SplLanguage.ExampleRelationship.Target
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> SourceOptionalFeatureElement
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.SplLanguage.FeatureElementOptionalReferencesFeatureElement.SourceOptionalFeatureElementDomainRoleId);
			}
		}
		#endregion
		#region TargetOptionalFeatureElement opposite domain role accessor
		
		/// <summary>
		/// Gets a list of TargetOptionalFeatureElement.
		/// Description for Company.SplLanguage.ExampleRelationship.Source
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> TargetOptionalFeatureElement
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.SplLanguage.FeatureElementOptionalReferencesFeatureElement.TargetOptionalFeatureElementDomainRoleId);
			}
		}
		#endregion
		#region SourceMandatoryFeatureElement opposite domain role accessor
		
		/// <summary>
		/// Gets a list of SourceMandatoryFeatureElement.
		/// Description for
		/// Company.SplLanguage.FeatureElementMandatoryReferencesFeatureElement.SourceMandatoryFeatureElement
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> SourceMandatoryFeatureElement
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.SplLanguage.FeatureElementMandatoryReferencesFeatureElement.SourceMandatoryFeatureElementDomainRoleId);
			}
		}
		#endregion
		#region TargetMandatoryFeatureElement opposite domain role accessor
		
		/// <summary>
		/// Gets a list of TargetMandatoryFeatureElement.
		/// Description for
		/// Company.SplLanguage.FeatureElementMandatoryReferencesFeatureElement.TargetMandatoryFeatureElement
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> TargetMandatoryFeatureElement
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.SplLanguage.FeatureElementMandatoryReferencesFeatureElement.TargetMandatoryFeatureElementDomainRoleId);
			}
		}
		#endregion
		#region SourceRequiresFeatureElement opposite domain role accessor
		
		/// <summary>
		/// Gets a list of SourceRequiresFeatureElement.
		/// Description for
		/// Company.SplLanguage.FeatureElementRequiresReferencesFeatureElements.SourceRequiresFeatureElement
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> SourceRequiresFeatureElement
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.SplLanguage.FeatureElementRequiresReferencesFeatureElements.SourceRequiresFeatureElementDomainRoleId);
			}
		}
		#endregion
		#region TargetRequiresFeatureElement opposite domain role accessor
		
		/// <summary>
		/// Gets a list of TargetRequiresFeatureElement.
		/// Description for
		/// Company.SplLanguage.FeatureElementRequiresReferencesFeatureElements.TargetRequiresFeatureElement
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> TargetRequiresFeatureElement
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.SplLanguage.FeatureElementRequiresReferencesFeatureElements.TargetRequiresFeatureElementDomainRoleId);
			}
		}
		#endregion
	}
}
