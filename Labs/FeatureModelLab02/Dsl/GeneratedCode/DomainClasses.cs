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
namespace Company.FeatureModelLab02
{
	/// <summary>
	/// DomainClass FeatureModel
	/// The root in which all other elements are embedded. Appears as a diagram.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureModel.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureModel.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("a84b5af0-17a8-4208-bb7c-85a8b6b34be1")]
	public partial class FeatureModel : DslModeling::ModelElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// FeatureModel domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xa84b5af0, 0x17a8, 0x4208, 0xbb, 0x7c, 0x85, 0xa8, 0xb6, 0xb3, 0x4b, 0xe1);
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
		#region Elements opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Elements.
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> Elements
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.FeatureModelLab02.FeatureModelHasElements.FeatureModelDomainRoleId);
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
				
				if (rootElementDomainInfo.IsDerivedFrom(global::Company.FeatureModelLab02.FeatureElement.DomainClassId)) 
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
		
				
			global::Company.FeatureModelLab02.FeatureElement sourceFeatureElement1 = sourceElement as global::Company.FeatureModelLab02.FeatureElement;
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
				
			global::Company.FeatureModelLab02.FeatureElement sourceFeatureElement1 = sourceElement as global::Company.FeatureModelLab02.FeatureElement;
			if (sourceFeatureElement1 != null)
			{
				// Delete link for path FeatureModelHasElements.Elements
				
				foreach (DslModeling::ElementLink link in global::Company.FeatureModelLab02.FeatureModelHasElements.GetLinks((global::Company.FeatureModelLab02.FeatureModel)this, sourceFeatureElement1))
				{
					// Delete the link, but without possible delete propagation to the element since it's moving to a new location.
					link.Delete(global::Company.FeatureModelLab02.FeatureModelHasElements.FeatureModelDomainRoleId, global::Company.FeatureModelLab02.FeatureModelHasElements.ElementDomainRoleId);
				}

				return;
			}
			// Fall through to base class if this class hasn't handled the unmerge.
			base.MergeDisconnect(sourceElement);
		}
		#endregion
	}
}
namespace Company.FeatureModelLab02
{
	/// <summary>
	/// DomainClass FeatureElement
	/// Elements embedded in the model. Appear as boxes on the diagram.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureElement.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureElement.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel))]
	[global::System.CLSCompliant(true)]
	[global::System.Diagnostics.DebuggerDisplay("{GetType().Name,nq} (Name = {namePropertyStorage})")]
	[DslModeling::DomainObjectId("60713d8d-bf3d-4eca-89ac-afa61648338e")]
	public partial class FeatureElement : DslModeling::ModelElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// FeatureElement domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x60713d8d, 0xbf3d, 0x4eca, 0x89, 0xac, 0xaf, 0xa6, 0x16, 0x48, 0x33, 0x8e);
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
		public static readonly global::System.Guid NameDomainPropertyId = new global::System.Guid(0xcd19231c, 0xd4fe, 0x40fa, 0xbb, 0x2d, 0xb7, 0x4d, 0x99, 0x9b, 0x10, 0xb6);
		
		/// <summary>
		/// Storage for Name
		/// </summary>
		private global::System.String namePropertyStorage = string.Empty;
		
		/// <summary>
		/// Gets or sets the value of Name domain property.
		/// Description for Company.FeatureModelLab02.FeatureElement.Name
		/// </summary>
		[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureElement/Name.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureElement/Name.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[global::System.ComponentModel.DefaultValue("")]
		[DslModeling::ElementName]
		[DslModeling::DomainObjectId("cd19231c-d4fe-40fa-bb2d-b74d999b10b6")]
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
		public static readonly global::System.Guid IncludedDomainPropertyId = new global::System.Guid(0x5b789093, 0xfde9, 0x4efb, 0x87, 0xaa, 0x90, 0xfe, 0xb7, 0x9d, 0x3c, 0x44);
		
		/// <summary>
		/// Storage for Included
		/// </summary>
		private global::System.Boolean includedPropertyStorage = true;
		
		/// <summary>
		/// Gets or sets the value of Included domain property.
		/// Description for Company.FeatureModelLab02.FeatureElement.Included
		/// </summary>
		[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureElement/Included.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureElement/Included.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[global::System.ComponentModel.DefaultValue(true)]
		[DslModeling::DomainObjectId("5b789093-fde9-4efb-87aa-90feb79d3c44")]
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
		#region FeatureModel opposite domain role accessor
		/// <summary>
		/// Gets or sets FeatureModel.
		/// </summary>
		public virtual FeatureModel FeatureModel
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return DslModeling::DomainRoleInfo.GetLinkedElement(this, global::Company.FeatureModelLab02.FeatureModelHasElements.ElementDomainRoleId) as FeatureModel;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetLinkedElement(this, global::Company.FeatureModelLab02.FeatureModelHasElements.ElementDomainRoleId, value);
			}
		}
		#endregion
		#region Targets opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Targets.
		/// Description for Company.FeatureModelLab02.ExampleRelationship.Target
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> Targets
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.FeatureModelLab02.FeatureElementReferencesTargets.SourceDomainRoleId);
			}
		}
		#endregion
		#region Sources opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Sources.
		/// Description for Company.FeatureModelLab02.ExampleRelationship.Source
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<FeatureElement> Sources
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(global::Company.FeatureModelLab02.FeatureElementReferencesTargets.TargetDomainRoleId);
			}
		}
		#endregion
	}
}
