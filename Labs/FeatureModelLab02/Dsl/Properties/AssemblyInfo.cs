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
[assembly: AssemblyProduct(@"FeatureModelLab02")]
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
[assembly: InternalsVisibleTo(@"Company.FeatureModelLab02.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100E5CFC6AB082A7F39AFEF2D1A4DCBCE3D5421C86E04C7F655A89F7815F762477528B3E02B19D01FDE0B9CD8BABA1016F4CBF200DC53817E643E83C32F63671748208D005BC842B5AAF40A6C6BA1CC0EF747030924A10479BDDBFD6C15B48F85E3F5DE483490DC81E95D5A77DA4D0D3818F963B416AB23B6847F30FA068323BEBD")]