$installername = "vs_professional.exe"

$langs = (
    'en-US',
    'zh-CN',
    'ja-JP'
)

# check the components you needed at 
# https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-professional
$addpacks = (
# Visual Studio core editor (included with Visual Studio Professional 2017)
	# Required
		'Microsoft.VisualStudio.Component.CoreEditor',

# Azure development
	# Required
		'Microsoft.Component.MSBuild',
		'Microsoft.Component.NetFX.Core.Runtime',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.Net.Core.Component.SDK',
		'Microsoft.NetCore.ComponentGroup.Web',
		'Microsoft.VisualStudio.Component.Azure.ClientLibs',
		'Microsoft.VisualStudio.Component.CloudExplorer',
		'Microsoft.VisualStudio.Component.Common.Azure.Tools',
		'Microsoft.VisualStudio.Component.IISExpress',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.PortableLibrary',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.ComponentGroup.Azure.Prerequisites',
	# Recommended
		'Component.WebSocket',
		'Microsoft.Component.Azure.DataLake.Tools',
		'Microsoft.Component.ClickOnce',
		'Microsoft.Net.Component.4.5.1.TargetingPack',
		'Microsoft.Net.Component.4.5.2.TargetingPack',
		'Microsoft.Net.Component.4.5.TargetingPack',
		'Microsoft.Net.Component.4.6.TargetingPack',
		'Microsoft.Net.Component.4.TargetingPack',
		'Microsoft.Net.ComponentGroup.TargetingPacks.Common',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.Azure.AuthoringTools',
		'Microsoft.VisualStudio.Component.Azure.Compute.Emulator',
		'Microsoft.VisualStudio.Component.Azure.MobileAppsSdk',
		'Microsoft.VisualStudio.Component.Azure.ResourceManager.Tools',
		'Microsoft.VisualStudio.Component.Azure.ServiceFabric.Tools',
		'Microsoft.VisualStudio.Component.Azure.Storage.Emulator',
		'Microsoft.VisualStudio.Component.Azure.Waverton',
		'Microsoft.VisualStudio.Component.DiagnosticTools',
		'Microsoft.VisualStudio.Component.IntelliTrace.FrontEnd',
		'Microsoft.VisualStudio.Component.JavaScript.Diagnostics',
		'Microsoft.VisualStudio.Component.JavaScript.TypeScript',
		'Microsoft.VisualStudio.Component.ManagedDesktop.Core',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.SQL.ADAL',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.SQL.CMDUtils',
		'Microsoft.VisualStudio.Component.SQL.DataSources',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.SQL.SSDT',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.TextTemplating',
		'Microsoft.VisualStudio.Component.TypeScript.2.1',
		'Microsoft.VisualStudio.Component.VisualStudioData',
		'Microsoft.VisualStudio.Component.Web',
		'Microsoft.VisualStudio.Component.WebDeploy',
		'Microsoft.VisualStudio.ComponentGroup.Azure.CloudServices',
		'Microsoft.VisualStudio.ComponentGroup.Azure.ResourceManager.Tools',
	# Optional
		'Microsoft.Net.Component.4.6.2.SDK',
		'Microsoft.Net.Component.4.6.2.TargetingPack',
		'Microsoft.Net.ComponentGroup.4.6.2.DeveloperTools',
		'Microsoft.VisualStudio.Component.Azure.Storage.AzCopy',
		'Microsoft.VisualStudio.Component.PowerShell.Tools',
		'Microsoft.VisualStudio.Component.Wcf.Tooling',

# Data storage and processing
	# Recommended
		'Component.Redgate.ReadyRoll',
		'Component.Redgate.SQLPrompt.VsPackage',
		'Component.Redgate.SQLSearch.VSExtension',
		'Component.WebSocket',
		'Microsoft.Component.Azure.DataLake.Tools',
		'Microsoft.Component.ClickOnce',
		'Microsoft.Component.MSBuild',
		'Microsoft.Net.Component.4.5.1.TargetingPack',
		'Microsoft.Net.Component.4.5.2.TargetingPack',
		'Microsoft.Net.Component.4.5.TargetingPack',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.Component.4.6.TargetingPack',
		'Microsoft.Net.Component.4.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.Net.ComponentGroup.TargetingPacks.Common',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.Azure.AuthoringTools',
		'Microsoft.VisualStudio.Component.Azure.ClientLibs',
		'Microsoft.VisualStudio.Component.Azure.Compute.Emulator',
		'Microsoft.VisualStudio.Component.Azure.Storage.Emulator',
		'Microsoft.VisualStudio.Component.Azure.Waverton',
		'Microsoft.VisualStudio.Component.CloudExplorer',
		'Microsoft.VisualStudio.Component.Common.Azure.Tools',
		'Microsoft.VisualStudio.Component.IISExpress',
		'Microsoft.VisualStudio.Component.JavaScript.Diagnostics',
		'Microsoft.VisualStudio.Component.JavaScript.TypeScript',
		'Microsoft.VisualStudio.Component.ManagedDesktop.Core',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.PortableLibrary',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.SQL.ADAL',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.SQL.CMDUtils',
		'Microsoft.VisualStudio.Component.SQL.DataSources',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.SQL.SSDT',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.TextTemplating',
		'Microsoft.VisualStudio.Component.TypeScript.2.1',
		'Microsoft.VisualStudio.Component.VisualStudioData',
		'Microsoft.VisualStudio.Component.Web',
		'Microsoft.VisualStudio.Component.WebDeploy',
	# Optional
		'Microsoft.VisualStudio.Component.FSharp',

# .NET desktop development
	# Required
		'Microsoft.Component.ClickOnce',
		'Microsoft.Component.MSBuild',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.VisualStudio.Component.Debugger.JustInTime',
		'Microsoft.VisualStudio.Component.ManagedDesktop.Core',
		'Microsoft.VisualStudio.Component.ManagedDesktop.Prerequisites',
		'Microsoft.VisualStudio.Component.PortableLibrary',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.TextTemplating',
		'Microsoft.VisualStudio.Component.VisualStudioData',
	# Recommended
		'Microsoft.ComponentGroup.Blend',
		'Microsoft.Net.Component.4.5.1.TargetingPack',
		'Microsoft.Net.Component.4.5.2.TargetingPack',
		'Microsoft.Net.Component.4.5.TargetingPack',
		'Microsoft.Net.Component.4.6.TargetingPack',
		'Microsoft.Net.Component.4.TargetingPack',
		'Microsoft.Net.ComponentGroup.TargetingPacks.Common',
		'Microsoft.VisualStudio.Component.DiagnosticTools',
		'Microsoft.VisualStudio.Component.EntityFramework',
		'Microsoft.VisualStudio.Component.IntelliTrace.FrontEnd',
		'Microsoft.VisualStudio.Component.LiveUnitTesting',
	# Optional
		'Component.Dotfuscator',
		'Microsoft.Net.Component.4.6.2.SDK',
		'Microsoft.Net.Component.4.6.2.TargetingPack',
		'Microsoft.Net.ComponentGroup.4.6.2.DeveloperTools',
		'Microsoft.Net.Core.Component.SDK',
		'Microsoft.NetCore.ComponentGroup.DevelopmentTools',
		'Microsoft.VisualStudio.Component.CodeClone',
		'Microsoft.VisualStudio.Component.CodeMap',
		'Microsoft.VisualStudio.Component.DependencyValidation.Enterprise',
		'Microsoft.VisualStudio.Component.FSharp',
		'Microsoft.VisualStudio.Component.GraphDocument',
		'Microsoft.VisualStudio.Component.IISExpress',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.Wcf.Tooling',
		'Microsoft.VisualStudio.Component.WebDeploy',
		'Microsoft.VisualStudio.ComponentGroup.ArchitectureTools.Managed',

<#		
# Game development with Unity
	# Required
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.Unity',
	# Recommended
		'Component.UnityEngine',
#>

# Linux development with C++
	# Required
		'Component.MDD.Linux',
		'Microsoft.VisualStudio.Component.VC.CoreIde',
		'Microsoft.VisualStudio.Component.Windows10SDK',

# Desktop development with C++
	# Required
		'Microsoft.Component.MSBuild',
		'Microsoft.VisualStudio.Component.ClassDesigner',
		'Microsoft.VisualStudio.Component.CodeMap',
		'Microsoft.VisualStudio.Component.Debugger.JustInTime',
		'Microsoft.VisualStudio.Component.GraphDocument',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.TextTemplating',
		'Microsoft.VisualStudio.Component.VC.CoreIde',
		'Microsoft.VisualStudio.ComponentGroup.ArchitectureTools.Native',
		'Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Core',
	# Recommended
		'Microsoft.VisualStudio.Component.Graphics.Tools',
		'Microsoft.VisualStudio.Component.Graphics.Win81',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.VC.CMake.Project',
		'Microsoft.VisualStudio.Component.VC.DiagnosticTools',
		'Microsoft.VisualStudio.Component.VC.Tools.x86.x64',
		'Microsoft.VisualStudio.Component.Windows10SDK.14393',
	# Optional
		'Component.Incredibuild',
		'Microsoft.Component.VC.Runtime.UCRTSDK',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.VisualStudio.Component.VC.140',
		'Microsoft.VisualStudio.Component.VC.ATL',
		'Microsoft.VisualStudio.Component.VC.ATLMFC',
		'Microsoft.VisualStudio.Component.VC.ClangC2',
		'Microsoft.VisualStudio.Component.VC.CLI.Support',
		'Microsoft.VisualStudio.Component.VC.Modules.x86.x64',
		#'Microsoft.VisualStudio.Component.Windows10SDK.10240',
		#'Microsoft.VisualStudio.Component.Windows10SDK.10586',
		#'Microsoft.VisualStudio.Component.Windows81SDK',
		#'Microsoft.VisualStudio.Component.WinXP',
		#'Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Win81',
		#'Microsoft.VisualStudio.ComponentGroup.NativeDesktop.WinXP',

<#
# Game development with C++
	# Required
		'Microsoft.VisualStudio.Component.Windows10SDK',
	# Recommended
		'Microsoft.VisualStudio.Component.Graphics.Tools',
		'Microsoft.VisualStudio.Component.Graphics.Win81',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.VC.CoreIde',
		'Microsoft.VisualStudio.Component.VC.DiagnosticTools',
		'Microsoft.VisualStudio.Component.VC.Tools.x86.x64',
		'Microsoft.VisualStudio.Component.Windows10SDK.14393',
	# Optional
		'Component.Cocos',
		'Component.Incredibuild',
		'Component.Unreal',
		'Microsoft.Component.VC.Runtime.UCRTSDK',
		'Microsoft.Net.Component.4.5.1.TargetingPack',
		'Microsoft.Net.Component.4.5.2.TargetingPack',
		'Microsoft.Net.Component.4.5.TargetingPack',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.Component.4.6.TargetingPack',
		'Microsoft.Net.Component.4.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.Net.ComponentGroup.TargetingPacks.Common',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.Windows10SDK.10240',
		'Microsoft.VisualStudio.Component.Windows10SDK.10586',
		'Microsoft.VisualStudio.Component.Windows81SDK',
		'Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Win81',
#>

<#
# Mobile development with C++
	# Required
		'Microsoft.VisualStudio.Component.VC.CoreIde',
	# Recommended
		'Component.Android.NDK.R13B',
		'Component.Android.SDK19',
		'Component.Android.SDK22',
		'Component.Ant',
		'Component.MDD.Android',
	# Optional
		'Component.Android.Emulator',
		'Component.Android.NDK.R11C',
		'Component.Android.NDK.R11C_3264',
		'Component.Android.NDK.R12B',
		'Component.Android.NDK.R12B_3264',
		'Component.Android.NDK.R13B_3264',
		'Component.Android.SDK23',
		'Component.Google.Android.Emulator.API23.V2',
		'Component.HAXM',
		'Component.Incredibuild',
		'Component.JavaJDK',
		'Component.MDD.IOS',
#>

# .NET Core cross-platform development
	# Required
		'Component.WebSocket',
		'Microsoft.Component.ClickOnce',
		'Microsoft.Component.MSBuild',
		'Microsoft.Net.Component.4.5.2.TargetingPack',
		'Microsoft.Net.Component.4.5.TargetingPack',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.Net.Core.Component.SDK',
		'Microsoft.NetCore.ComponentGroup.Web',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.Common.Azure.Tools',
		'Microsoft.VisualStudio.Component.IISExpress',
		'Microsoft.VisualStudio.Component.JavaScript.Diagnostics',
		'Microsoft.VisualStudio.Component.JavaScript.TypeScript',
		'Microsoft.VisualStudio.Component.ManagedDesktop.Core',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.PortableLibrary',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.SQL.ADAL',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.SQL.CMDUtils',
		'Microsoft.VisualStudio.Component.SQL.DataSources',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.SQL.SSDT',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.TextTemplating',
		'Microsoft.VisualStudio.Component.TypeScript.2.1',
		'Microsoft.VisualStudio.Component.VisualStudioData',
		'Microsoft.VisualStudio.Component.Web',
		'Microsoft.VisualStudio.Component.WebDeploy',
	# Recommended
		'Microsoft.VisualStudio.Component.DockerTools',

<#
# Mobile development with .NET
	# Required
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.VisualStudio.Component.PortableLibrary',
	# Recommended
		'Component.Android.NDK.R13B',
		'Component.Android.SDK23',
		'Component.Google.Android.Emulator.API23.V2',
		'Component.HAXM',
		'Component.JavaJDK',
		'Component.Xamarin',
		'Component.Xamarin.Inspector',
		'Component.Xamarin.Profiler',
		'Component.Xamarin.RemotedSimulator',
		'Microsoft.VisualStudio.Component.FSharp',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
	# Optional
		'Microsoft.Component.ClickOnce',
		'Microsoft.Component.NetFX.Native',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.CodeClone',
		'Microsoft.VisualStudio.Component.CodeMap',
		'Microsoft.VisualStudio.Component.DependencyValidation.Enterprise',
		'Microsoft.VisualStudio.Component.DiagnosticTools',
		'Microsoft.VisualStudio.Component.GraphDocument',
		'Microsoft.VisualStudio.Component.Graphics',
		'Microsoft.VisualStudio.Component.Phone.Emulator',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.VisualStudioData',
		'Microsoft.VisualStudio.Component.Windows10SDK.14393',
		'Microsoft.VisualStudio.ComponentGroup.ArchitectureTools.Managed',
		'Microsoft.VisualStudio.ComponentGroup.UWP.Xamarin',
#>

<#
# ASP.NET and web development
	# Required
		'Component.WebSocket',
		'Microsoft.Component.ClickOnce',
		'Microsoft.Component.MSBuild',
		'Microsoft.Net.Component.4.5.2.TargetingPack',
		'Microsoft.Net.Component.4.5.TargetingPack',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.Net.Core.Component.SDK',
		'Microsoft.NetCore.ComponentGroup.Web',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.Common.Azure.Tools',
		'Microsoft.VisualStudio.Component.IISExpress',
		'Microsoft.VisualStudio.Component.JavaScript.Diagnostics',
		'Microsoft.VisualStudio.Component.JavaScript.TypeScript',
		'Microsoft.VisualStudio.Component.ManagedDesktop.Core',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.PortableLibrary',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.SQL.ADAL',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.SQL.CMDUtils',
		'Microsoft.VisualStudio.Component.SQL.DataSources',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.SQL.SSDT',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.TextTemplating',
		'Microsoft.VisualStudio.Component.TypeScript.2.1',
		'Microsoft.VisualStudio.Component.VisualStudioData',
		'Microsoft.VisualStudio.Component.Web',
		'Microsoft.VisualStudio.Component.WebDeploy',
	# Recommended
		'Microsoft.Net.Component.4.5.1.TargetingPack',
		'Microsoft.Net.Component.4.6.TargetingPack',
		'Microsoft.Net.Component.4.TargetingPack',
		'Microsoft.Net.ComponentGroup.TargetingPacks.Common',
		'Microsoft.VisualStudio.Component.CloudExplorer',
		'Microsoft.VisualStudio.Component.DiagnosticTools',
		'Microsoft.VisualStudio.Component.DockerTools',
		'Microsoft.VisualStudio.Component.EntityFramework',
		'Microsoft.VisualStudio.Component.IntelliTrace.FrontEnd',
		'Microsoft.VisualStudio.Component.LiveUnitTesting',
		'Microsoft.VisualStudio.Component.Wcf.Tooling',
	# Optional
		'Microsoft.Net.Component.4.6.2.SDK',
		'Microsoft.Net.Component.4.6.2.TargetingPack',
		'Microsoft.Net.ComponentGroup.4.6.2.DeveloperTools',
		'Microsoft.VisualStudio.Component.ClassDesigner',
		'Microsoft.VisualStudio.Component.CodeClone',
		'Microsoft.VisualStudio.Component.CodeMap',
		'Microsoft.VisualStudio.Component.DependencyValidation.Enterprise',
		'Microsoft.VisualStudio.Component.FSharp',
		'Microsoft.VisualStudio.Component.GraphDocument',
		'Microsoft.VisualStudio.ComponentGroup.ArchitectureTools.Managed',
		'Microsoft.VisualStudio.Web.Mvc4.ComponentGroup',
#>

# Node.js development
	# Required
		'Microsoft.VisualStudio.Component.JavaScript.TypeScript',
		'Microsoft.VisualStudio.Component.Node.Tools',
		'Microsoft.VisualStudio.Component.TypeScript.2.1',
		'Microsoft.VisualStudio.Component.WebDeploy',
	# Recommended
		'Microsoft.VisualStudio.Component.Common.Azure.Tools',
		'Microsoft.VisualStudio.Component.Git',
	# Optional
		'Component.WebSocket',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.DiagnosticTools',
		'Microsoft.VisualStudio.Component.JavaScript.Diagnostics',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.VC.CoreIde',
		'Microsoft.VisualStudio.Component.VC.Tools.x86.x64',

# Office/SharePoint development
	# Required
		'Component.WebSocket',
		'Microsoft.Component.ClickOnce',
		'Microsoft.Component.MSBuild',
		'Microsoft.Net.Component.4.5.2.TargetingPack',
		'Microsoft.Net.Component.4.5.TargetingPack',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.Component.4.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.Common.Azure.Tools',
		'Microsoft.VisualStudio.Component.Debugger.JustInTime',
		'Microsoft.VisualStudio.Component.IISExpress',
		'Microsoft.VisualStudio.Component.JavaScript.Diagnostics',
		'Microsoft.VisualStudio.Component.JavaScript.TypeScript',
		'Microsoft.VisualStudio.Component.ManagedDesktop.Core',
		'Microsoft.VisualStudio.Component.ManagedDesktop.Prerequisites',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.PortableLibrary',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.Sharepoint.Tools',
		'Microsoft.VisualStudio.Component.SQL.ADAL',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.SQL.CMDUtils',
		'Microsoft.VisualStudio.Component.SQL.DataSources',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.SQL.SSDT',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.TextTemplating',
		'Microsoft.VisualStudio.Component.TypeScript.2.1',
		'Microsoft.VisualStudio.Component.VisualStudioData',
		'Microsoft.VisualStudio.Component.Wcf.Tooling',
		'Microsoft.VisualStudio.Component.Web',
		'Microsoft.VisualStudio.Component.WebDeploy',
		'Microsoft.VisualStudio.Component.Workflow',
	# Recommended
		'Microsoft.VisualStudio.Component.TeamOffice',
	# Optional
		'Microsoft.VisualStudio.Component.IntelliTrace.FrontEnd',

# Universal Windows Platform development
	# Required
		'Component.WebSocket',
		'Microsoft.Component.ClickOnce',
		'Microsoft.Component.NetFX.Native',
		'Microsoft.ComponentGroup.Blend',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.DiagnosticTools',
		'Microsoft.VisualStudio.Component.Graphics',
		'Microsoft.VisualStudio.Component.JavaScript.Diagnostics',
		'Microsoft.VisualStudio.Component.JavaScript.TypeScript',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.PortableLibrary',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.TypeScript.2.1',
		'Microsoft.VisualStudio.Component.UWP.Support',
		'Microsoft.VisualStudio.Component.VisualStudioData',
		'Microsoft.VisualStudio.Component.Windows10SDK.14393',
		'Microsoft.VisualStudio.ComponentGroup.UWP.Cordova',
		'Microsoft.VisualStudio.ComponentGroup.UWP.Xamarin',
	# Recommended
		'Microsoft.VisualStudio.Component.IntelliTrace.FrontEnd',
	# Optional
		'Microsoft.Component.VC.Runtime.OSSupport',
		'Microsoft.VisualStudio.Component.CodeClone',
		'Microsoft.VisualStudio.Component.CodeMap',
		'Microsoft.VisualStudio.Component.DependencyValidation.Enterprise',
		'Microsoft.VisualStudio.Component.GraphDocument',
		'Microsoft.VisualStudio.Component.Graphics.Tools',
		'Microsoft.VisualStudio.Component.Graphics.Win81',
		#'Microsoft.VisualStudio.Component.Phone.Emulator',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.Component.VC.CoreIde',
		'Microsoft.VisualStudio.Component.VC.Tools.ARM',
		'Microsoft.VisualStudio.Component.VC.Tools.x86.x64',
		#'Microsoft.VisualStudio.Component.Windows10SDK.10240',
		#'Microsoft.VisualStudio.Component.Windows10SDK.10586',
		'Microsoft.VisualStudio.ComponentGroup.ArchitectureTools.Managed',
		'Microsoft.VisualStudio.ComponentGroup.UWP.VC',

# Visual Studio extension development
	# Required
		'Microsoft.Component.ClickOnce',
		'Microsoft.Net.Component.4.6.1.SDK',
		'Microsoft.Net.Component.4.6.1.TargetingPack',
		'Microsoft.Net.ComponentGroup.DevelopmentPrerequisites',
		'Microsoft.VisualStudio.Component.NuGet',
		'Microsoft.VisualStudio.Component.PortableLibrary',
		'Microsoft.VisualStudio.ComponentGroup.VisualStudioExtension.Prerequisites',
	# Recommended
		'Microsoft.VisualStudio.Component.CodeClone',
		'Microsoft.VisualStudio.Component.CodeMap',
		'Microsoft.VisualStudio.Component.DependencyValidation.Enterprise',
		'Microsoft.VisualStudio.Component.DiagnosticTools',
		'Microsoft.VisualStudio.Component.GraphDocument',
		'Microsoft.VisualStudio.Component.IntelliTrace.FrontEnd',
		'Microsoft.VisualStudio.Component.SQL.LocalDB.Runtime',
		'Microsoft.VisualStudio.Component.SQL.NCLI',
		'Microsoft.VisualStudio.ComponentGroup.ArchitectureTools.Managed',
	# Optional
		'Component.Dotfuscator',
		'Microsoft.Component.MSBuild',
		'Microsoft.Component.VC.Runtime.OSSupport',
		'Microsoft.Net.Component.4.6.TargetingPack',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.ClassDesigner',
		'Microsoft.VisualStudio.Component.DslTools',
		'Microsoft.VisualStudio.Component.Roslyn.Compiler',
		'Microsoft.VisualStudio.Component.Roslyn.LanguageServices',
		'Microsoft.VisualStudio.Component.Static.Analysis.Tools',
		'Microsoft.VisualStudio.Component.TextTemplating',
		'Microsoft.VisualStudio.Component.VC.ATL',
		'Microsoft.VisualStudio.Component.VC.ATLMFC',
		'Microsoft.VisualStudio.Component.VC.CoreIde',
		'Microsoft.VisualStudio.Component.VC.Tools.x86.x64',
		'Microsoft.VisualStudio.Component.VSSDK',

<#
# Mobile development with JavaScript
	# Required
		'Component.CordovaToolset.6.3.1',
		'Component.WebSocket',
		'Microsoft.VisualStudio.Component.Cordova',
		'Microsoft.VisualStudio.Component.JavaScript.Diagnostics',
		'Microsoft.VisualStudio.Component.JavaScript.TypeScript',
		'Microsoft.VisualStudio.Component.TypeScript.2.1',
	# Optional
		'Component.Android.SDK23',
		'Component.Google.Android.Emulator.API23.V2',
		'Component.HAXM',
		'Component.JavaJDK',
		'Microsoft.Component.ClickOnce',
		'Microsoft.Component.NetFX.Native',
		'Microsoft.VisualStudio.Component.AppInsights.Tools',
		'Microsoft.VisualStudio.Component.DiagnosticTools',
		'Microsoft.VisualStudio.Component.Git',
		'Microsoft.VisualStudio.Component.Graphics',
		'Microsoft.VisualStudio.Component.Phone.Emulator',
		'Microsoft.VisualStudio.Component.SQL.CLR',
		'Microsoft.VisualStudio.Component.VisualStudioData',
		'Microsoft.VisualStudio.Component.Windows10SDK.14393',
		'Microsoft.VisualStudio.ComponentGroup.UWP.Cordova',
#>

# Unaffiliated components
	# Optional
		'Component.GitHub.VisualStudio',
		'Microsoft.Component.Blend.SDK.WPF',
		'Microsoft.Component.HelpViewer',
		'Microsoft.Net.Component.3.5.DeveloperTools',
		'Microsoft.VisualStudio.Component.DependencyValidation.Community',
		'Microsoft.VisualStudio.Component.LinqToSql',
		'Microsoft.VisualStudio.Component.TestTools.Core'
		#'Microsoft.VisualStudio.Component.TypeScript.2.0'
)

# args for packages
$addpackargs = ''
$sigpacks = ($addpacks | Group)
foreach($pack in $sigpacks) {
    $addpackargs += "$pack.Name "
}

# args for langs 
$langargs = ''
foreach($lan in $langs) {
    $langargs += "$lan "
}
$langargs = $langargs.Substring(0, $langargs.Length - 1)

# find the path
$path = $pwd.Path + "vs2017"
$name = $pwd.Path + "\$installername"
$app = Get-Command -Name $name | Where-Object {$_.CommandType -eq "Application"}

# write args to console
Write-Output ".\$installername --layout $path --lang $langargs --add $addpacks"

# launch the installer
& $app --layout $path --lang $langargs --add $addpacks