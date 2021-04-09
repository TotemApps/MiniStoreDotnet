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
[assembly: AssemblyProduct(@"Features")]
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
[assembly: InternalsVisibleTo(@"Company.SplLanguage.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100096CAA5FB0A4584EC0DA5BE616FBDB38A40986F6011D877FAD6784DFD828A79B961F6810209B5754C737831833100C1AAE266FF2790FEC1B124A475A7624D53B0FAF0199AF546744603B809B250E202EF2239707A075C4798394F6ED371487D425FCFDD0DEA2B1CC2318838A02DF9C268488B2EEFB0FBAE754B03C715DF432C6")]