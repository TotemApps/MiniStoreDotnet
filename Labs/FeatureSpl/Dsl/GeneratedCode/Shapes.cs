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
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.FeatureSpl
{
	/// <summary>
	/// DomainClass FeatureShape
	/// Shape used to represent ExampleElements on a Diagram.
	/// </summary>
	[DslDesign::DisplayNameResource("Company.FeatureSpl.FeatureShape.DisplayName", typeof(global::Company.FeatureSpl.FeatureSplDomainModel), "Company.FeatureSpl.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.FeatureSpl.FeatureShape.Description", typeof(global::Company.FeatureSpl.FeatureSplDomainModel), "Company.FeatureSpl.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.FeatureSpl.FeatureSplDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("c9e6b9ca-d203-4618-bef0-99e1870fd80d")]
	public partial class FeatureShape : DslDiagrams::NodeShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with FeatureShape.
		/// </summary>
		public static DslDiagrams::Decorator FindFeatureShapeDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		
		/// <summary>
		/// Shape instance initialization.
		/// </summary>
		public override void OnInitialize()
		{
			base.OnInitialize();
			
			// Create host shapes for outer decorators.
			foreach(DslDiagrams::Decorator decorator in this.Decorators)
			{
				if(decorator.RequiresHost)
				{
					decorator.ConfigureHostShape(this);
				}
			}
			
		}
		#endregion
		#region Shape size
		
		/// <summary>
		/// Default size for this shape.
		/// </summary>
		public override DslDiagrams::SizeD DefaultSize
		{
			get
			{
				return new DslDiagrams::SizeD(2, 0.75);
			}
		}
		#endregion
		#region Shape styles
		/// <summary>
		/// Initializes style set resources for this shape type
		/// </summary>
		/// <param name="classStyleSet">The style set for this shape class</param>
		protected override void InitializeResources(DslDiagrams::StyleSet classStyleSet)
		{
			base.InitializeResources(classStyleSet);
			
			// Outline pen settings for this shape.
			DslDiagrams::PenSettings outlinePen = new DslDiagrams::PenSettings();
			outlinePen.Color = global::System.Drawing.Color.FromArgb(255, 113, 111, 110);
			outlinePen.Width = 0.01F;
			classStyleSet.OverridePen(DslDiagrams::DiagramPens.ShapeOutline, outlinePen);
			// Fill brush settings for this shape.
			DslDiagrams::BrushSettings backgroundBrush = new DslDiagrams::BrushSettings();
			backgroundBrush.Color = global::System.Drawing.Color.FromArgb(255, 242, 239, 229);
			classStyleSet.OverrideBrush(DslDiagrams::DiagramBrushes.ShapeBackground, backgroundBrush);
		
		}
		
		/// <summary>
		/// Indicates whether this shape displays a background gradient.
		/// </summary>
		public override bool HasBackgroundGradient
		{
			get
			{
				return true;
			}
		}
		
		/// <summary>
		/// Indicates the direction of the gradient.
		/// </summary>
		public override global::System.Drawing.Drawing2D.LinearGradientMode BackgroundGradientMode
		{
			get
			{
				return global::System.Drawing.Drawing2D.LinearGradientMode.Horizontal;
			}
		}
		#endregion
		#region Decorators
		/// <summary>
		/// Initialize the collection of shape fields associated with this shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
			DslDiagrams::TextField field1 = new DslDiagrams::TextField("NameDecorator");
			field1.DefaultText = global::Company.FeatureSpl.FeatureSplDomainModel.SingletonResourceManager.GetString("FeatureShapeNameDecoratorDefaultText");
			field1.DefaultFocusable = true;
			field1.DefaultAutoSize = true;
			field1.AnchoringBehavior.MinimumHeightInLines = 1;
			field1.AnchoringBehavior.MinimumWidthInCharacters = 1;
			field1.DefaultAccessibleState = global::System.Windows.Forms.AccessibleStates.Invisible;
			shapeFields.Add(field1);
			
			DslDiagrams::ImageField field2 = new DslDiagrams::ImageField("IncludedDecorator");
			field2.DefaultImage = DslDiagrams::ImageHelper.GetImage(global::Company.FeatureSpl.FeatureSplDomainModel.SingletonResourceManager.GetObject("FeatureShapeIncludedDecoratorDefaultImage"));
			shapeFields.Add(field2);
			
		}
		
		/// <summary>
		/// Initialize the collection of decorators associated with this shape type.  This method also
		/// creates shape fields for outer decorators, because these are not part of the shape fields collection
		/// associated with the shape, so they must be created here rather than in InitializeShapeFields.
		/// </summary>
		protected override void InitializeDecorators(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields, global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators)
		{
			base.InitializeDecorators(shapeFields, decorators);
			
			DslDiagrams::ShapeField field1 = DslDiagrams::ShapeElement.FindShapeField(shapeFields, "NameDecorator");
			DslDiagrams::Decorator decorator1 = new DslDiagrams::ShapeDecorator(field1, DslDiagrams::ShapeDecoratorPosition.Center, DslDiagrams::PointD.Empty);
			decorators.Add(decorator1);
				
			DslDiagrams::ShapeField field2 = DslDiagrams::ShapeElement.FindShapeField(shapeFields, "IncludedDecorator");
			DslDiagrams::Decorator decorator2 = new DslDiagrams::ShapeDecorator(field2, DslDiagrams::ShapeDecoratorPosition.InnerBottomRight, DslDiagrams::PointD.Empty);
			decorators.Add(decorator2);
				
		}
		
		/// <summary>
		/// Ensure outer decorators are placed appropriately.  This is called during view fixup,
		/// after the shape has been associated with the model element.
		/// </summary>
		public override void OnBoundsFixup(DslDiagrams::BoundsFixupState fixupState, int iteration, bool createdDuringViewFixup)
		{
			base.OnBoundsFixup(fixupState, iteration, createdDuringViewFixup);
			
			if(iteration == 0)
			{
				foreach(DslDiagrams::Decorator decorator in this.Decorators)
				{
					if(decorator.RequiresHost)
					{
						decorator.RepositionHostShape(decorator.GetHostShape(this));
					}
				}
			}
		}
		#endregion
		#region Constructors, domain class Id
	
		/// <summary>
		/// FeatureShape domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xc9e6b9ca, 0xd203, 0x4618, 0xbe, 0xf0, 0x99, 0xe1, 0x87, 0x0f, 0xd8, 0x0d);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public FeatureShape(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public FeatureShape(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace Company.FeatureSpl
{
	/// <summary>
	/// DomainClass RootFeatureShape
	/// Description for Company.FeatureSpl.RootFeatureShape
	/// </summary>
	[DslDesign::DisplayNameResource("Company.FeatureSpl.RootFeatureShape.DisplayName", typeof(global::Company.FeatureSpl.FeatureSplDomainModel), "Company.FeatureSpl.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.FeatureSpl.RootFeatureShape.Description", typeof(global::Company.FeatureSpl.FeatureSplDomainModel), "Company.FeatureSpl.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::Company.FeatureSpl.FeatureSplDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("d3f421c3-1293-48f4-965c-4e8669455f8f")]
	public partial class RootFeatureShape : FeatureShape
	{
		#region DiagramElement boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		private static global::System.Collections.Generic.IList<DslDiagrams::Decorator> decorators;
		
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		
		/// <summary>
		/// Event fired when decorator initialization is complete for this shape type.
		/// </summary>
		public static new event global::System.EventHandler DecoratorsInitialized;
		
		/// <summary>
		/// List containing decorators used by this type.
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::Decorator> Decorators
		{
			get 
			{
				if(decorators == null)
				{
					decorators = CreateDecorators();
					
					// fire this event to allow the diagram to initialize decorator mappings for this shape type.
					if(DecoratorsInitialized != null)
					{
						DecoratorsInitialized(this, global::System.EventArgs.Empty);
					}
				}
				
				return decorators; 
			}
		}
		
		/// <summary>
		/// Finds a decorator associated with RootFeatureShape.
		/// </summary>
		public static DslDiagrams::Decorator FindRootFeatureShapeDecorator(string decoratorName)
		{	
			if(decorators == null) return null;
			return DslDiagrams::ShapeElement.FindDecorator(decorators, decoratorName);
		}
		
		#endregion
		#region Shape styles
		/// <summary>
		/// Initializes style set resources for this shape type
		/// </summary>
		/// <param name="classStyleSet">The style set for this shape class</param>
		protected override void InitializeResources(DslDiagrams::StyleSet classStyleSet)
		{
			base.InitializeResources(classStyleSet);
			
			// Outline pen settings for this shape.
			DslDiagrams::PenSettings outlinePen = new DslDiagrams::PenSettings();
			outlinePen.Color = global::System.Drawing.Color.FromKnownColor(global::System.Drawing.KnownColor.Black);
			outlinePen.Width = 0.03125F;
			classStyleSet.OverridePen(DslDiagrams::DiagramPens.ShapeOutline, outlinePen);
			// Fill brush settings for this shape.
			DslDiagrams::BrushSettings backgroundBrush = new DslDiagrams::BrushSettings();
			backgroundBrush.Color = global::System.Drawing.Color.FromKnownColor(global::System.Drawing.KnownColor.White);
			classStyleSet.OverrideBrush(DslDiagrams::DiagramBrushes.ShapeBackground, backgroundBrush);
		
		}
		
		/// <summary>
		/// Indicates whether this shape displays a background gradient.
		/// </summary>
		public override bool HasBackgroundGradient
		{
			get
			{
				return true;
			}
		}
		
		/// <summary>
		/// Indicates the direction of the gradient.
		/// </summary>
		public override global::System.Drawing.Drawing2D.LinearGradientMode BackgroundGradientMode
		{
			get
			{
				return global::System.Drawing.Drawing2D.LinearGradientMode.Horizontal;
			}
		}
		#endregion
		#region Constructors, domain class Id
	
		/// <summary>
		/// RootFeatureShape domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0xd3f421c3, 0x1293, 0x48f4, 0x96, 0x5c, 0x4e, 0x86, 0x69, 0x45, 0x5f, 0x8f);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public RootFeatureShape(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public RootFeatureShape(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}

