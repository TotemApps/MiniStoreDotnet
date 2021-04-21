using DslShell = global::Microsoft.VisualStudio.Modeling.Shell;
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslValidation = global::Microsoft.VisualStudio.Modeling.Validation;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
using VSShellInterop = global::Microsoft.VisualStudio.Shell.Interop;
using global::System.Linq;
using System;
using Microsoft.VisualStudio.Modeling;

namespace Company.SplLanguage
{
    partial class SplLanguageDocData
    {
        protected override void OnDocumentLoaded(EventArgs e)
        {
            base.OnDocumentLoaded(e);
            Store store = this.Store;
            /*
            EventManagerDirectory emd = store.EventManagerDirectory;
            DomainModelInfo domainModelInfo = store.DomainDataDirectory
          .FindDomainModel(typeof(DomainModelInfo));
            emd.ElementAdded.Add(domainModelInfo, new EventHandler<ElementAddedEventArgs>(AddFeatutreElement));
            */
        }

        private void AddFeatutreElement(object sender, ElementAddedEventArgs e)
        {
            FeatureElement featureElement = e.ModelElement as FeatureElement;
        }

    }
}
