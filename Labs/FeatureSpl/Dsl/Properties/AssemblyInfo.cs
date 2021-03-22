#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"Variamos")]
[assembly: AssemblyProduct(@"Ministore")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"Company.FeatureSpl.DslPackage, PublicKey=00240000048000009400000006020000002400005253413100040000010001005D5E53D8E4EE296B23B03B1110DB83104CE0EF1BF0E5FAC331E42D6E665F5706A13DB404432E22DC2B46299269B0A32C635CA23FAF98ACDDA3773370214B4E030408D8524255031BD039B94145DE9697BCB41FF5A15BB53F8D9A2CA0A6631665866F1584A80EB444E0559933D20DD322F7795AFB9A34D08F37CE36140703EAB5")]