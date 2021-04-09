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
[assembly: AssemblyCompany(@"Company")]
[assembly: AssemblyProduct(@"LanguageLab03")]
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
[assembly: InternalsVisibleTo(@"Company.LanguageLab03.DslPackage, PublicKey=00240000048000009400000006020000002400005253413100040000010001004DBA3A2A0119241DAD0CB02427E6A01DEF23E1DA61C39A3F665F84E5989CE6E85B100127B90A63AD6DF4C803C5D93CEDB34ECAB398BA4D8EF65C06B477479FDA9C71833CCDE3DD1CCC6AFC1465CB5480D4C4D92F31541EBD446A3FF16A9861433EBC4872200186EEF66A97461AD4BF227A6D8A1DFB9326EED7A3A66D77DAE1C0")]