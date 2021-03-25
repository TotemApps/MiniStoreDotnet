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
namespace Company.LanguageLab03
{
	/// <summary>
	/// DomainClass ExampleModel
	/// The root in which all other elements are embedded. Appears as a diagram.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.LanguageLab03.ExampleModel.DisplayName", typeof(global::Company.LanguageLab03.LanguageLab03DomainModel), "Company.LanguageLab03.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.LanguageLab03.ExampleModel.Description", typeof(global::Company.LanguageLab03.LanguageLab03DomainModel), "Company.LanguageLab03.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.LanguageLab03.LanguageLab03DomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("ce482e01-5870-4131-880f-194d4887154e")]
	public partial class ExampleModel : DslModeling::ModelElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// ExampleModel domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xce482e01, 0x5870, 0x4131, 0x88, 0x0f, 0x19, 0x4d, 0x48, 0x87, 0x15, 0x4e);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public ExampleModel(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public ExampleModel(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Elements opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Elements.
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<ExampleElement> Elements
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<ExampleElement>, ExampleElement>(global::Company.LanguageLab03.ExampleModelHasElements.ExampleModelDomainRoleId);
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
				
				if (rootElementDomainInfo.IsDerivedFrom(global::Company.LanguageLab03.ExampleElement.DomainClassId)) 
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
		
				
			global::Company.LanguageLab03.ExampleElement sourceExampleElement1 = sourceElement as global::Company.LanguageLab03.ExampleElement;
			if (sourceExampleElement1 != null)
			{
				// Create link for path ExampleModelHasElements.Elements
				this.Elements.Add(sourceExampleElement1);

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
				
			global::Company.LanguageLab03.ExampleElement sourceExampleElement1 = sourceElement as global::Company.LanguageLab03.ExampleElement;
			if (sourceExampleElement1 != null)
			{
				// Delete link for path ExampleModelHasElements.Elements
				
				foreach (DslModeling::ElementLink link in global::Company.LanguageLab03.ExampleModelHasElements.GetLinks((global::Company.LanguageLab03.ExampleModel)this, sourceExampleElement1))
				{
					// Delete the link, but without possible delete propagation to the element since it's moving to a new location.
					link.Delete(global::Company.LanguageLab03.ExampleModelHasElements.ExampleModelDomainRoleId, global::Company.LanguageLab03.ExampleModelHasElements.ElementDomainRoleId);
				}

				return;
			}
			// Fall through to base class if this class hasn't handled the unmerge.
			base.MergeDisconnect(sourceElement);
		}
		#endregion
	}
}
namespace Company.LanguageLab03
{
	/// <summary>
	/// DomainClass ExampleElement
	/// Elements embedded in the model. Appear as boxes on the diagram.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.LanguageLab03.ExampleElement.DisplayName", typeof(global::Company.LanguageLab03.LanguageLab03DomainModel), "Company.LanguageLab03.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.LanguageLab03.ExampleElement.Description", typeof(global::Company.LanguageLab03.LanguageLab03DomainModel), "Company.LanguageLab03.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.LanguageLab03.LanguageLab03DomainModel))]
	[global::System.CLSCompliant(true)]
	[global::System.Diagnostics.DebuggerDisplay("{GetType().Name,nq} (Name = {namePropertyStorage})")]
	[DslModeling::DomainObjectId("eafd9885-bd7a-481e-a379-a6fe4ec3c908")]
	public partial class ExampleElement : DslModeling::ModelElement
	{
		#region Constructors, domain class Id
	
		/// <summary>
		/// ExampleElement domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xeafd9885, 0xbd7a, 0x481e, 0xa3, 0x79, 0xa6, 0xfe, 0x4e, 0xc3, 0xc9, 0x08);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public ExampleElement(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public ExampleElement(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
		#region Name domain property code
		
		/// <summary>
		/// Name domain property Id.
		/// </summary>
		public static readonly global::System.Guid NameDomainPropertyId = new global::System.Guid(0x6769beb4, 0x9b41, 0x4bcf, 0xb3, 0x86, 0x6b, 0x03, 0x9f, 0x6a, 0x5f, 0xf1);
		
		/// <summary>
		/// Storage for Name
		/// </summary>
		private global::System.String namePropertyStorage = string.Empty;
		
		/// <summary>
		/// Gets or sets the value of Name domain property.
		/// Description for Company.LanguageLab03.ExampleElement.Name
		/// </summary>
		[DslDesign::DisplayNameResource("Company.LanguageLab03.ExampleElement/Name.DisplayName", typeof(global::Company.LanguageLab03.LanguageLab03DomainModel), "Company.LanguageLab03.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.LanguageLab03.ExampleElement/Name.Description", typeof(global::Company.LanguageLab03.LanguageLab03DomainModel), "Company.LanguageLab03.GeneratedCode.DomainModelResx")]
		[global::System.ComponentModel.DefaultValue("")]
		[DslModeling::ElementName]
		[DslModeling::DomainObjectId("6769beb4-9b41-4bcf-b386-6b039f6a5ff1")]
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
		/// Value handler for the ExampleElement.Name domain property.
		/// </summary>
		internal sealed partial class NamePropertyHandler : DslModeling::DomainPropertyValueHandler<ExampleElement, global::System.String>
		{
			private NamePropertyHandler() { }
		
			/// <summary>
			/// Gets the singleton instance of the ExampleElement.Name domain property value handler.
			/// </summary>
			public static readonly NamePropertyHandler Instance = new NamePropertyHandler();
		
			/// <summary>
			/// Gets the Id of the ExampleElement.Name domain property.
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
			public override sealed global::System.String GetValue(ExampleElement element)
			{
				if (element == null) throw new global::System.ArgumentNullException("element");
				return element.namePropertyStorage;
			}
		
			/// <summary>
			/// Sets property value on an element.
			/// </summary>
			/// <param name="element">Element which owns the property.</param>
			/// <param name="newValue">New property value.</param>
			public override sealed void SetValue(ExampleElement element, global::System.String newValue)
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
		#region ExampleModel opposite domain role accessor
		/// <summary>
		/// Gets or sets ExampleModel.
		/// </summary>
		public virtual ExampleModel ExampleModel
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return DslModeling::DomainRoleInfo.GetLinkedElement(this, global::Company.LanguageLab03.ExampleModelHasElements.ElementDomainRoleId) as ExampleModel;
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetLinkedElement(this, global::Company.LanguageLab03.ExampleModelHasElements.ElementDomainRoleId, value);
			}
		}
		#endregion
		#region Targets opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Targets.
		/// Description for Company.LanguageLab03.ExampleRelationship.Target
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<ExampleElement> Targets
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<ExampleElement>, ExampleElement>(global::Company.LanguageLab03.ExampleElementReferencesTargets.SourceDomainRoleId);
			}
		}
		#endregion
		#region Sources opposite domain role accessor
		
		/// <summary>
		/// Gets a list of Sources.
		/// Description for Company.LanguageLab03.ExampleRelationship.Source
		/// </summary>
		public virtual DslModeling::LinkedElementCollection<ExampleElement> Sources
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return GetRoleCollection<DslModeling::LinkedElementCollection<ExampleElement>, ExampleElement>(global::Company.LanguageLab03.ExampleElementReferencesTargets.TargetDomainRoleId);
			}
		}
		#endregion
	}
}