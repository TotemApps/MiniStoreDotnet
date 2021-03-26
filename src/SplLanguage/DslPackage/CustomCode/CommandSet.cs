using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Windows.Forms;
using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Diagrams;
using Microsoft.VisualStudio.Modeling.Shell;

namespace Company.SplLanguage
{
    internal partial class SplLanguageCommandSet
    {
        private Guid guidCustomMenuCmdSet =
    new Guid("946C46BA-6E57-4C7F-8153-F025DEDFFC79");
        private const int grpidMyMenuGroup = 0x01001;
        private const int cmdidMyContextMenuCommand = 1;

        private void OnStatusExportFeature(object sender, EventArgs e)
        {
            MenuCommand command = sender as MenuCommand;
            command.Visible = command.Enabled = true;
        }
        private void OnMenuExportFeature(object sender, EventArgs e)
        {
            MessageBox.Show("Feature Model Exported!!");
        }

        protected override IList<MenuCommand> GetMenuCommands()
        {
            // Get the list of generated commands.
            IList<MenuCommand> commands = base.GetMenuCommands();
            // Add a custom command:
            DynamicStatusMenuCommand exportFeaturetMenuCommand =
              new DynamicStatusMenuCommand(
                new EventHandler(OnStatusExportFeature),
                new EventHandler(OnMenuExportFeature),
                new CommandID(guidCustomMenuCmdSet, cmdidMyContextMenuCommand));
            commands.Add(exportFeaturetMenuCommand);
            // Add more commands here.
            return commands;
        }
    }
}
