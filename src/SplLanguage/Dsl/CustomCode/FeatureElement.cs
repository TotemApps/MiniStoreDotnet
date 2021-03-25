using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using System.Windows.Forms;

/// <summary>
/// Override methods in a partial class
/// https://docs.microsoft.com/en-us/visualstudio/modeling/overriding-and-extending-the-generated-classes?view=vs-2019
/// </summary>
namespace Company.SplLanguage
{
    public partial class FeatureElement : DslModeling::ModelElement
    {
        protected override void OnDeleted()
        {
            MessageBox.Show("Deleting:" + this.GetDomainClass().GetType().Name + ", Name: " + this.Name);
            base.OnDeleted();
            
        }
    }
}
