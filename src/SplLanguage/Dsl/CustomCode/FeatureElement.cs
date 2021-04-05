using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using System.Windows.Forms;
using Microsoft.VisualStudio.Modeling.Validation;
using System;
using Microsoft.VisualStudio.Modeling;

/// <summary>
/// Override methods in a partial class
/// https://docs.microsoft.com/en-us/visualstudio/modeling/overriding-and-extending-the-generated-classes?view=vs-2019
/// </summary>
namespace Company.SplLanguage
{
    [ValidationState(ValidationState.Enabled)]
    public partial class FeatureElement : DslModeling::ModelElement
    {
        [ValidationMethod
  ( // Specify which events cause the method to be invoked:
    ValidationCategories.Open // On file load.
  | ValidationCategories.Save // On save to file.
  | ValidationCategories.Menu // On user menu command.
  )]
        private void ValidationTest(ValidationContext context)
        {
        }
        protected override void OnDeleted()
        {
            MessageBox.Show("Deleting:" + this.GetDomainClass().GetType().Name + ", Name: " + this.Name);
            base.OnDeleted();

        }
    }

}



