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
	/// DomainRelationship FeatureModelHasElements
	/// Embedding relationship between the Model and Elements
	/// </summary>
	[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureModelHasElements.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureModelHasElements.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainRelationship(IsEmbedding=true)]
	[DslModeling::DomainObjectId("8bd45550-3d0a-4042-809b-b771b379d793")]
	public partial class FeatureModelHasElements : DslModeling::ElementLink
	{
		#region Constructors, domain class Id
		
		/// <summary>
		/// FeatureModelHasElements domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x8bd45550, 0x3d0a, 0x4042, 0x80, 0x9b, 0xb7, 0x71, 0xb3, 0x79, 0xd7, 0x93);
	
				
		/// <summary>
		/// Constructor
		/// Creates a FeatureModelHasElements link in the same Partition as the given FeatureModel
		/// </summary>
		/// <param name="source">FeatureModel to use as the source of the relationship.</param>
		/// <param name="target">FeatureElement to use as the target of the relationship.</param>
		public FeatureModelHasElements(FeatureModel source, FeatureElement target)
			: base((source != null ? source.Partition : null), new DslModeling::RoleAssignment[]{new DslModeling::RoleAssignment(FeatureModelHasElements.FeatureModelDomainRoleId, source), new DslModeling::RoleAssignment(FeatureModelHasElements.ElementDomainRoleId, target)}, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public FeatureModelHasElements(DslModeling::Store store, params DslModeling::RoleAssignment[] roleAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public FeatureModelHasElements(DslModeling::Store store, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public FeatureModelHasElements(DslModeling::Partition partition, params DslModeling::RoleAssignment[] roleAssignments)
			: base(partition, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public FeatureModelHasElements(DslModeling::Partition partition, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, roleAssignments, propertyAssignments)
		{
		}
		#endregion
		#region FeatureModel domain role code
		
		/// <summary>
		/// FeatureModel domain role Id.
		/// </summary>
		public static readonly global::System.Guid FeatureModelDomainRoleId = new global::System.Guid(0x4de57582, 0x9db4, 0x44fd, 0xb7, 0x8b, 0x65, 0x41, 0xa5, 0xf5, 0x79, 0x24);
		
		/// <summary>
		/// DomainRole FeatureModel
		/// </summary>
		[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureModelHasElements/FeatureModel.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureModelHasElements/FeatureModel.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Source, PropertyName = "Elements", PropertyDisplayNameKey="Company.FeatureModelLab02.FeatureModelHasElements/FeatureModel.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.PropagatesCopyToLinkAndOppositeRolePlayer, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("4de57582-9db4-44fd-b78b-6541a5f57924")]
		public virtual FeatureModel FeatureModel
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (FeatureModel)DslModeling::DomainRoleInfo.GetRolePlayer(this, FeatureModelDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, FeatureModelDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access FeatureModel of a FeatureElement
		/// <summary>
		/// Gets FeatureModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static FeatureModel GetFeatureModel(FeatureElement element)
		{
			return DslModeling::DomainRoleInfo.GetLinkedElement(element, ElementDomainRoleId) as FeatureModel;
		}
		
		/// <summary>
		/// Sets FeatureModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static void SetFeatureModel(FeatureElement element, FeatureModel newFeatureModel)
		{
			DslModeling::DomainRoleInfo.SetLinkedElement(element, ElementDomainRoleId, newFeatureModel);
		}
		#endregion
		#region Element domain role code
		
		/// <summary>
		/// Element domain role Id.
		/// </summary>
		public static readonly global::System.Guid ElementDomainRoleId = new global::System.Guid(0xd5e00edc, 0x0a71, 0x4c27, 0x8a, 0x3f, 0x9d, 0xa3, 0x7c, 0xbe, 0x1a, 0xe9);
		
		/// <summary>
		/// DomainRole Element
		/// </summary>
		[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureModelHasElements/Element.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureModelHasElements/Element.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Target, PropertyName = "FeatureModel", PropertyDisplayNameKey="Company.FeatureModelLab02.FeatureModelHasElements/Element.PropertyDisplayName", PropagatesDelete = true,  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.One)]
		[DslModeling::DomainObjectId("d5e00edc-0a71-4c27-8a3f-9da37cbe1ae9")]
		public virtual FeatureElement Element
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (FeatureElement)DslModeling::DomainRoleInfo.GetRolePlayer(this, ElementDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, ElementDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access Elements of a FeatureModel
		/// <summary>
		/// Gets a list of Elements.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static DslModeling::LinkedElementCollection<FeatureElement> GetElements(FeatureModel element)
		{
			return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(element, FeatureModelDomainRoleId);
		}
		#endregion
		#region FeatureModel link accessor
		/// <summary>
		/// Get the list of FeatureModelHasElements links to a FeatureModel.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.FeatureModelLab02.FeatureModelHasElements> GetLinksToElements ( global::Company.FeatureModelLab02.FeatureModel featureModelInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.FeatureModelLab02.FeatureModelHasElements>(featureModelInstance, global::Company.FeatureModelLab02.FeatureModelHasElements.FeatureModelDomainRoleId);
		}
		#endregion
		#region Element link accessor
		/// <summary>
		/// Get the FeatureModelHasElements link to a FeatureElement.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.FeatureModelLab02.FeatureModelHasElements GetLinkToFeatureModel (global::Company.FeatureModelLab02.FeatureElement elementInstance)
		{
			global::System.Collections.Generic.IList<global::Company.FeatureModelLab02.FeatureModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.FeatureModelLab02.FeatureModelHasElements>(elementInstance, global::Company.FeatureModelLab02.FeatureModelHasElements.ElementDomainRoleId);
			global::System.Diagnostics.Debug.Assert(links.Count <= 1, "Multiplicity of Element not obeyed.");
			if ( links.Count == 0 )
			{
				return null;
			}
			else
			{
				return links[0];
			}
		}
		#endregion
		#region FeatureModelHasElements instance accessors
		
		/// <summary>
		/// Get any FeatureModelHasElements links between a given FeatureModel and a FeatureElement.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.FeatureModelLab02.FeatureModelHasElements> GetLinks( global::Company.FeatureModelLab02.FeatureModel source, global::Company.FeatureModelLab02.FeatureElement target )
		{
			global::System.Collections.Generic.List<global::Company.FeatureModelLab02.FeatureModelHasElements> outLinks = new global::System.Collections.Generic.List<global::Company.FeatureModelLab02.FeatureModelHasElements>();
			global::System.Collections.Generic.IList<global::Company.FeatureModelLab02.FeatureModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.FeatureModelLab02.FeatureModelHasElements>(source, global::Company.FeatureModelLab02.FeatureModelHasElements.FeatureModelDomainRoleId);
			foreach ( global::Company.FeatureModelLab02.FeatureModelHasElements link in links )
			{
				if ( target.Equals(link.Element) )
				{
					outLinks.Add(link);
				}
			}
			return outLinks.AsReadOnly();
		}
		/// <summary>
		/// Get the one FeatureModelHasElements link between a given FeatureModeland a FeatureElement.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.FeatureModelLab02.FeatureModelHasElements GetLink( global::Company.FeatureModelLab02.FeatureModel source, global::Company.FeatureModelLab02.FeatureElement target )
		{
			global::System.Collections.Generic.IList<global::Company.FeatureModelLab02.FeatureModelHasElements> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.FeatureModelLab02.FeatureModelHasElements>(source, global::Company.FeatureModelLab02.FeatureModelHasElements.FeatureModelDomainRoleId);
			foreach ( global::Company.FeatureModelLab02.FeatureModelHasElements link in links )
			{
				if ( target.Equals(link.Element) )
				{
					return link;
				}
			}
			return null;
		}
		
		#endregion
	}
}
namespace Company.FeatureModelLab02
{
	/// <summary>
	/// DomainRelationship FeatureElementReferencesTargets
	/// Reference relationship between Elements.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureElementReferencesTargets.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureElementReferencesTargets.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainRelationship()]
	[DslModeling::DomainObjectId("61c7edf5-0d74-457c-a702-ba37130c0741")]
	public partial class FeatureElementReferencesTargets : DslModeling::ElementLink
	{
		#region Constructors, domain class Id
		
		/// <summary>
		/// FeatureElementReferencesTargets domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x61c7edf5, 0x0d74, 0x457c, 0xa7, 0x02, 0xba, 0x37, 0x13, 0x0c, 0x07, 0x41);
	
				
		/// <summary>
		/// Constructor
		/// Creates a FeatureElementReferencesTargets link in the same Partition as the given FeatureElement
		/// </summary>
		/// <param name="source">FeatureElement to use as the source of the relationship.</param>
		/// <param name="target">FeatureElement to use as the target of the relationship.</param>
		public FeatureElementReferencesTargets(FeatureElement source, FeatureElement target)
			: base((source != null ? source.Partition : null), new DslModeling::RoleAssignment[]{new DslModeling::RoleAssignment(FeatureElementReferencesTargets.SourceDomainRoleId, source), new DslModeling::RoleAssignment(FeatureElementReferencesTargets.TargetDomainRoleId, target)}, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public FeatureElementReferencesTargets(DslModeling::Store store, params DslModeling::RoleAssignment[] roleAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public FeatureElementReferencesTargets(DslModeling::Store store, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, roleAssignments, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		public FeatureElementReferencesTargets(DslModeling::Partition partition, params DslModeling::RoleAssignment[] roleAssignments)
			: base(partition, roleAssignments, null)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new link is to be created.</param>
		/// <param name="roleAssignments">List of relationship role assignments.</param>
		/// <param name="propertyAssignments">List of properties assignments to set on the new link.</param>
		public FeatureElementReferencesTargets(DslModeling::Partition partition, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, roleAssignments, propertyAssignments)
		{
		}
		#endregion
		#region Source domain role code
		
		/// <summary>
		/// Source domain role Id.
		/// </summary>
		public static readonly global::System.Guid SourceDomainRoleId = new global::System.Guid(0xcdd05c7a, 0x25d5, 0x4c55, 0xa4, 0xec, 0xdd, 0x56, 0x42, 0x33, 0x20, 0xe3);
		
		/// <summary>
		/// DomainRole Source
		/// Description for Company.FeatureModelLab02.ExampleRelationship.Target
		/// </summary>
		[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureElementReferencesTargets/Source.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureElementReferencesTargets/Source.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Source, PropertyName = "Targets", PropertyDisplayNameKey="Company.FeatureModelLab02.FeatureElementReferencesTargets/Source.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("cdd05c7a-25d5-4c55-a4ec-dd56423320e3")]
		public virtual FeatureElement Source
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (FeatureElement)DslModeling::DomainRoleInfo.GetRolePlayer(this, SourceDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, SourceDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access Sources of a FeatureElement
		/// <summary>
		/// Gets a list of Sources.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static DslModeling::LinkedElementCollection<FeatureElement> GetSources(FeatureElement element)
		{
			return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(element, TargetDomainRoleId);
		}
		#endregion
		#region Target domain role code
		
		/// <summary>
		/// Target domain role Id.
		/// </summary>
		public static readonly global::System.Guid TargetDomainRoleId = new global::System.Guid(0x7fdda66a, 0x2d68, 0x495e, 0xad, 0x6f, 0x96, 0xcf, 0x33, 0xf5, 0x8a, 0x1a);
		
		/// <summary>
		/// DomainRole Target
		/// Description for Company.FeatureModelLab02.ExampleRelationship.Source
		/// </summary>
		[DslDesign::DisplayNameResource("Company.FeatureModelLab02.FeatureElementReferencesTargets/Target.DisplayName", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslDesign::DescriptionResource("Company.FeatureModelLab02.FeatureElementReferencesTargets/Target.Description", typeof(global::Company.FeatureModelLab02.FeatureModelLab02DomainModel), "Company.FeatureModelLab02.GeneratedCode.DomainModelResx")]
		[DslModeling::DomainRole(DslModeling::DomainRoleOrder.Target, PropertyName = "Sources", PropertyDisplayNameKey="Company.FeatureModelLab02.FeatureElementReferencesTargets/Target.PropertyDisplayName",  PropagatesCopy = DslModeling::PropagatesCopyOption.DoNotPropagateCopy, Multiplicity = DslModeling::Multiplicity.ZeroMany)]
		[DslModeling::DomainObjectId("7fdda66a-2d68-495e-ad6f-96cf33f58a1a")]
		public virtual FeatureElement Target
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return (FeatureElement)DslModeling::DomainRoleInfo.GetRolePlayer(this, TargetDomainRoleId);
			}
			[global::System.Diagnostics.DebuggerStepThrough]
			set
			{
				DslModeling::DomainRoleInfo.SetRolePlayer(this, TargetDomainRoleId, value);
			}
		}
				
		#endregion
		#region Static methods to access Targets of a FeatureElement
		/// <summary>
		/// Gets a list of Targets.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static DslModeling::LinkedElementCollection<FeatureElement> GetTargets(FeatureElement element)
		{
			return GetRoleCollection<DslModeling::LinkedElementCollection<FeatureElement>, FeatureElement>(element, SourceDomainRoleId);
		}
		#endregion
		#region Source link accessor
		/// <summary>
		/// Get the list of FeatureElementReferencesTargets links to a FeatureElement.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.FeatureModelLab02.FeatureElementReferencesTargets> GetLinksToTargets ( global::Company.FeatureModelLab02.FeatureElement sourceInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.FeatureModelLab02.FeatureElementReferencesTargets>(sourceInstance, global::Company.FeatureModelLab02.FeatureElementReferencesTargets.SourceDomainRoleId);
		}
		#endregion
		#region Target link accessor
		/// <summary>
		/// Get the list of FeatureElementReferencesTargets links to a FeatureElement.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.FeatureModelLab02.FeatureElementReferencesTargets> GetLinksToSources ( global::Company.FeatureModelLab02.FeatureElement targetInstance )
		{
			return DslModeling::DomainRoleInfo.GetElementLinks<global::Company.FeatureModelLab02.FeatureElementReferencesTargets>(targetInstance, global::Company.FeatureModelLab02.FeatureElementReferencesTargets.TargetDomainRoleId);
		}
		#endregion
		#region FeatureElementReferencesTargets instance accessors
		
		/// <summary>
		/// Get any FeatureElementReferencesTargets links between a given FeatureElement and a FeatureElement.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::System.Collections.ObjectModel.ReadOnlyCollection<global::Company.FeatureModelLab02.FeatureElementReferencesTargets> GetLinks( global::Company.FeatureModelLab02.FeatureElement source, global::Company.FeatureModelLab02.FeatureElement target )
		{
			global::System.Collections.Generic.List<global::Company.FeatureModelLab02.FeatureElementReferencesTargets> outLinks = new global::System.Collections.Generic.List<global::Company.FeatureModelLab02.FeatureElementReferencesTargets>();
			global::System.Collections.Generic.IList<global::Company.FeatureModelLab02.FeatureElementReferencesTargets> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.FeatureModelLab02.FeatureElementReferencesTargets>(source, global::Company.FeatureModelLab02.FeatureElementReferencesTargets.SourceDomainRoleId);
			foreach ( global::Company.FeatureModelLab02.FeatureElementReferencesTargets link in links )
			{
				if ( target.Equals(link.Target) )
				{
					outLinks.Add(link);
				}
			}
			return outLinks.AsReadOnly();
		}
		/// <summary>
		/// Get the one FeatureElementReferencesTargets link between a given FeatureElementand a FeatureElement.
		/// </summary>
		[global::System.Diagnostics.DebuggerStepThrough]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1011")]
		public static global::Company.FeatureModelLab02.FeatureElementReferencesTargets GetLink( global::Company.FeatureModelLab02.FeatureElement source, global::Company.FeatureModelLab02.FeatureElement target )
		{
			global::System.Collections.Generic.IList<global::Company.FeatureModelLab02.FeatureElementReferencesTargets> links = DslModeling::DomainRoleInfo.GetElementLinks<global::Company.FeatureModelLab02.FeatureElementReferencesTargets>(source, global::Company.FeatureModelLab02.FeatureElementReferencesTargets.SourceDomainRoleId);
			foreach ( global::Company.FeatureModelLab02.FeatureElementReferencesTargets link in links )
			{
				if ( target.Equals(link.Target) )
				{
					return link;
				}
			}
			return null;
		}
		
		#endregion
	}
}
