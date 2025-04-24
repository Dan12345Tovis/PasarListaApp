; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [197 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [394 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 140
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 139
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 183
	i32 57725457, ; 3: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 3
	i32 57727992, ; 4: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 4
	i32 66541672, ; 5: System.Diagnostics.StackTrace => 0x3f75868 => 123
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 43
	i32 68219467, ; 7: System.Security.Cryptography.Primitives => 0x410f24b => 172
	i32 72070932, ; 8: Microsoft.Maui.Graphics.dll => 0x44bb714 => 69
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 158
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 181
	i32 139659294, ; 11: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 4
	i32 142721839, ; 12: System.Net.WebHeaderCollection => 0x881c32f => 147
	i32 149972175, ; 13: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 172
	i32 165246403, ; 14: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 83
	i32 166535111, ; 15: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 7
	i32 182336117, ; 16: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 101
	i32 195452805, ; 17: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 40
	i32 199333315, ; 18: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 41
	i32 205061960, ; 19: System.ComponentModel => 0xc38ff48 => 118
	i32 209399409, ; 20: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 81
	i32 230752869, ; 21: Microsoft.CSharp.dll => 0xdc10265 => 108
	i32 246610117, ; 22: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 155
	i32 264223668, ; 23: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 8
	i32 280992041, ; 24: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 12
	i32 317674968, ; 25: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 40
	i32 318968648, ; 26: Xamarin.AndroidX.Activity.dll => 0x13031348 => 78
	i32 330147069, ; 27: Microsoft.SqlServer.Server => 0x13ada4fd => 70
	i32 336156722, ; 28: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 25
	i32 342366114, ; 29: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 90
	i32 356389973, ; 30: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 24
	i32 367780167, ; 31: System.IO.Pipes => 0x15ebe147 => 134
	i32 374914964, ; 32: System.Transactions.Local => 0x1658bf94 => 186
	i32 375677976, ; 33: System.Net.ServicePoint.dll => 0x16646418 => 144
	i32 379916513, ; 34: System.Threading.Thread.dll => 0x16a510e1 => 183
	i32 385762202, ; 35: System.Memory.dll => 0x16fe439a => 137
	i32 392610295, ; 36: System.Threading.ThreadPool.dll => 0x1766c1f7 => 184
	i32 395744057, ; 37: _Microsoft.Android.Resource.Designer => 0x17969339 => 44
	i32 435591531, ; 38: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 36
	i32 442565967, ; 39: System.Collections => 0x1a61054f => 115
	i32 450948140, ; 40: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 89
	i32 451504562, ; 41: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 173
	i32 459347974, ; 42: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 163
	i32 469710990, ; 43: System.dll => 0x1bff388e => 191
	i32 485463106, ; 44: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 59
	i32 498788369, ; 45: System.ObjectModel => 0x1dbae811 => 149
	i32 500358224, ; 46: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 23
	i32 503918385, ; 47: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 17
	i32 513247710, ; 48: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 56
	i32 539058512, ; 49: Microsoft.Extensions.Logging => 0x20216150 => 53
	i32 546455878, ; 50: System.Runtime.Serialization.Xml => 0x20924146 => 164
	i32 548916678, ; 51: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 47
	i32 577335427, ; 52: System.Security.Cryptography.Cng => 0x22697083 => 169
	i32 592146354, ; 53: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 31
	i32 613668793, ; 54: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 168
	i32 627609679, ; 55: Xamarin.AndroidX.CustomView => 0x2568904f => 87
	i32 627931235, ; 56: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 29
	i32 662205335, ; 57: System.Text.Encodings.Web.dll => 0x27787397 => 178
	i32 672442732, ; 58: System.Collections.Concurrent => 0x2814a96c => 111
	i32 683518922, ; 59: System.Net.Security => 0x28bdabca => 143
	i32 688181140, ; 60: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 11
	i32 690569205, ; 61: System.Xml.Linq.dll => 0x29293ff5 => 187
	i32 706645707, ; 62: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 26
	i32 709557578, ; 63: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 14
	i32 722857257, ; 64: System.Runtime.Loader.dll => 0x2b15ed29 => 159
	i32 723796036, ; 65: System.ClientModel.dll => 0x2b244044 => 71
	i32 759454413, ; 66: System.Net.Requests => 0x2d445acd => 142
	i32 762598435, ; 67: System.IO.Pipes.dll => 0x2d745423 => 134
	i32 775507847, ; 68: System.IO.Compression => 0x2e394f87 => 131
	i32 777317022, ; 69: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 35
	i32 789151979, ; 70: Microsoft.Extensions.Options => 0x2f0980eb => 55
	i32 804715423, ; 71: System.Data.Common => 0x2ff6fb9f => 120
	i32 823281589, ; 72: System.Private.Uri.dll => 0x311247b5 => 151
	i32 830298997, ; 73: System.IO.Compression.Brotli => 0x317d5b75 => 130
	i32 904024072, ; 74: System.ComponentModel.Primitives.dll => 0x35e25008 => 116
	i32 926902833, ; 75: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 38
	i32 967690846, ; 76: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 90
	i32 975236339, ; 77: System.Diagnostics.Tracing => 0x3a20ecf3 => 126
	i32 975874589, ; 78: System.Xml.XDocument => 0x3a2aaa1d => 189
	i32 986514023, ; 79: System.Private.DataContractSerialization.dll => 0x3acd0267 => 150
	i32 992768348, ; 80: System.Collections.dll => 0x3b2c715c => 115
	i32 1012816738, ; 81: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 100
	i32 1019214401, ; 82: System.Drawing => 0x3cbffa41 => 128
	i32 1028951442, ; 83: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 52
	i32 1029334545, ; 84: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 13
	i32 1035644815, ; 85: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 79
	i32 1036536393, ; 86: System.Drawing.Primitives.dll => 0x3dc84a49 => 127
	i32 1044663988, ; 87: System.Linq.Expressions.dll => 0x3e444eb4 => 135
	i32 1048439329, ; 88: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 0
	i32 1052210849, ; 89: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 92
	i32 1062017875, ; 90: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 58
	i32 1082857460, ; 91: System.ComponentModel.TypeConverter => 0x408b17f4 => 117
	i32 1084122840, ; 92: Xamarin.Kotlin.StdLib => 0x409e66d8 => 105
	i32 1089913930, ; 93: System.Diagnostics.EventLog.dll => 0x40f6c44a => 73
	i32 1098259244, ; 94: System => 0x41761b2c => 191
	i32 1118262833, ; 95: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 26
	i32 1138436374, ; 96: Microsoft.Data.SqlClient.dll => 0x43db2916 => 48
	i32 1168523401, ; 97: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 32
	i32 1178241025, ; 98: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 97
	i32 1203215381, ; 99: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 30
	i32 1208641965, ; 100: System.Diagnostics.Process => 0x480a69ad => 122
	i32 1234928153, ; 101: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 28
	i32 1260983243, ; 102: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 12
	i32 1293217323, ; 103: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 88
	i32 1309188875, ; 104: System.Private.DataContractSerialization => 0x4e08a30b => 150
	i32 1324164729, ; 105: System.Linq => 0x4eed2679 => 136
	i32 1335329327, ; 106: System.Runtime.Serialization.Json.dll => 0x4f97822f => 162
	i32 1373134921, ; 107: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 42
	i32 1376866003, ; 108: Xamarin.AndroidX.SavedState => 0x52114ed3 => 100
	i32 1406073936, ; 109: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 84
	i32 1408764838, ; 110: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 161
	i32 1430672901, ; 111: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 10
	i32 1452070440, ; 112: System.Formats.Asn1.dll => 0x568cd628 => 129
	i32 1458022317, ; 113: System.Net.Security.dll => 0x56e7a7ad => 143
	i32 1460893475, ; 114: System.IdentityModel.Tokens.Jwt => 0x57137723 => 74
	i32 1461004990, ; 115: es\Microsoft.Maui.Controls.resources => 0x57152abe => 16
	i32 1461234159, ; 116: System.Collections.Immutable.dll => 0x5718a9ef => 112
	i32 1462112819, ; 117: System.IO.Compression.dll => 0x57261233 => 131
	i32 1469204771, ; 118: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 80
	i32 1470490898, ; 119: Microsoft.Extensions.Primitives => 0x57a5e912 => 56
	i32 1479771757, ; 120: System.Collections.Immutable => 0x5833866d => 112
	i32 1480492111, ; 121: System.IO.Compression.Brotli.dll => 0x583e844f => 130
	i32 1487239319, ; 122: Microsoft.Win32.Primitives => 0x58a57897 => 109
	i32 1493001747, ; 123: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 20
	i32 1498168481, ; 124: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 60
	i32 1514721132, ; 125: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 15
	i32 1536373174, ; 126: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 124
	i32 1543031311, ; 127: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 180
	i32 1551623176, ; 128: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 35
	i32 1565310744, ; 129: System.Runtime.Caching => 0x5d4cbf18 => 76
	i32 1573704789, ; 130: System.Runtime.Serialization.Json => 0x5dccd455 => 162
	i32 1582305585, ; 131: Azure.Identity => 0x5e501131 => 46
	i32 1596263029, ; 132: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 9
	i32 1601016668, ; 133: Lista.dll => 0x5f6d935c => 107
	i32 1604827217, ; 134: System.Net.WebClient => 0x5fa7b851 => 146
	i32 1622152042, ; 135: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 94
	i32 1624863272, ; 136: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 103
	i32 1628113371, ; 137: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 63
	i32 1636350590, ; 138: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 86
	i32 1639515021, ; 139: System.Net.Http.dll => 0x61b9038d => 138
	i32 1639986890, ; 140: System.Text.RegularExpressions => 0x61c036ca => 180
	i32 1657153582, ; 141: System.Runtime => 0x62c6282e => 165
	i32 1658251792, ; 142: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 104
	i32 1677501392, ; 143: System.Net.Primitives.dll => 0x63fca3d0 => 141
	i32 1679769178, ; 144: System.Security.Cryptography => 0x641f3e5a => 174
	i32 1696967625, ; 145: System.Security.Cryptography.Csp => 0x6525abc9 => 170
	i32 1729485958, ; 146: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 82
	i32 1736233607, ; 147: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 33
	i32 1743415430, ; 148: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 11
	i32 1744735666, ; 149: System.Transactions.Local.dll => 0x67fe8db2 => 186
	i32 1750313021, ; 150: Microsoft.Win32.Primitives.dll => 0x6853a83d => 109
	i32 1763938596, ; 151: System.Diagnostics.TraceSource.dll => 0x69239124 => 125
	i32 1766324549, ; 152: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 101
	i32 1770582343, ; 153: Microsoft.Extensions.Logging.dll => 0x6988f147 => 53
	i32 1780572499, ; 154: Mono.Android.Runtime.dll => 0x6a216153 => 195
	i32 1782862114, ; 155: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 27
	i32 1788241197, ; 156: Xamarin.AndroidX.Fragment => 0x6a96652d => 89
	i32 1793755602, ; 157: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 19
	i32 1794500907, ; 158: Microsoft.Identity.Client.dll => 0x6af5e92b => 57
	i32 1796167890, ; 159: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 47
	i32 1808609942, ; 160: Xamarin.AndroidX.Loader => 0x6bcd3296 => 94
	i32 1813058853, ; 161: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 105
	i32 1813201214, ; 162: Xamarin.Google.Android.Material => 0x6c13413e => 104
	i32 1818569960, ; 163: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 98
	i32 1824175904, ; 164: System.Text.Encoding.Extensions => 0x6cbab720 => 177
	i32 1824722060, ; 165: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 161
	i32 1828688058, ; 166: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 54
	i32 1842015223, ; 167: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 39
	i32 1853025655, ; 168: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 36
	i32 1858542181, ; 169: System.Linq.Expressions => 0x6ec71a65 => 135
	i32 1870277092, ; 170: System.Reflection.Primitives => 0x6f7a29e4 => 156
	i32 1871986876, ; 171: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 63
	i32 1875935024, ; 172: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 18
	i32 1910275211, ; 173: System.Collections.NonGeneric.dll => 0x71dc7c8b => 113
	i32 1939592360, ; 174: System.Private.Xml.Linq => 0x739bd4a8 => 152
	i32 1968388702, ; 175: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 49
	i32 1986222447, ; 176: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 64
	i32 2003115576, ; 177: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 15
	i32 2011961780, ; 178: System.Buffers.dll => 0x77ec19b4 => 110
	i32 2019465201, ; 179: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 92
	i32 2025202353, ; 180: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 10
	i32 2040764568, ; 181: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 58
	i32 2045470958, ; 182: System.Private.Xml => 0x79eb68ee => 153
	i32 2055257422, ; 183: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 91
	i32 2066184531, ; 184: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 14
	i32 2070888862, ; 185: System.Diagnostics.TraceSource => 0x7b6f419e => 125
	i32 2079903147, ; 186: System.Runtime.dll => 0x7bf8cdab => 165
	i32 2090596640, ; 187: System.Numerics.Vectors => 0x7c9bf920 => 148
	i32 2101806470, ; 188: Lista => 0x7d470586 => 107
	i32 2127167465, ; 189: System.Console => 0x7ec9ffe9 => 119
	i32 2142473426, ; 190: System.Collections.Specialized => 0x7fb38cd2 => 114
	i32 2143790110, ; 191: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 190
	i32 2159891885, ; 192: Microsoft.Maui => 0x80bd55ad => 67
	i32 2169148018, ; 193: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 22
	i32 2181898931, ; 194: Microsoft.Extensions.Options.dll => 0x820d22b3 => 55
	i32 2192057212, ; 195: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 54
	i32 2193016926, ; 196: System.ObjectModel.dll => 0x82b6c85e => 149
	i32 2201107256, ; 197: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 106
	i32 2201231467, ; 198: System.Net.Http => 0x8334206b => 138
	i32 2207618523, ; 199: it\Microsoft.Maui.Controls.resources => 0x839595db => 24
	i32 2228745826, ; 200: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 6
	i32 2253551641, ; 201: Microsoft.IdentityModel.Protocols => 0x86527819 => 62
	i32 2265110946, ; 202: System.Security.AccessControl.dll => 0x8702d9a2 => 166
	i32 2266799131, ; 203: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 50
	i32 2270573516, ; 204: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 18
	i32 2279755925, ; 205: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 99
	i32 2295906218, ; 206: System.Net.Sockets => 0x88d8bfaa => 145
	i32 2303942373, ; 207: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 28
	i32 2305521784, ; 208: System.Private.CoreLib.dll => 0x896b7878 => 193
	i32 2309278602, ; 209: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 5
	i32 2340441535, ; 210: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 157
	i32 2353062107, ; 211: System.Net.Primitives => 0x8c40e0db => 141
	i32 2368005991, ; 212: System.Xml.ReaderWriter.dll => 0x8d24e767 => 188
	i32 2369706906, ; 213: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 61
	i32 2371007202, ; 214: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 49
	i32 2378619854, ; 215: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 170
	i32 2383496789, ; 216: System.Security.Principal.Windows.dll => 0x8e114655 => 175
	i32 2395872292, ; 217: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 23
	i32 2427813419, ; 218: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 20
	i32 2435356389, ; 219: System.Console.dll => 0x912896e5 => 119
	i32 2458678730, ; 220: System.Net.Sockets.dll => 0x928c75ca => 145
	i32 2471841756, ; 221: netstandard.dll => 0x93554fdc => 192
	i32 2475788418, ; 222: Java.Interop.dll => 0x93918882 => 194
	i32 2480646305, ; 223: Microsoft.Maui.Controls => 0x93dba8a1 => 65
	i32 2484371297, ; 224: System.Net.ServicePoint => 0x94147f61 => 144
	i32 2509217888, ; 225: System.Diagnostics.EventLog => 0x958fa060 => 73
	i32 2538310050, ; 226: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 155
	i32 2550873716, ; 227: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 21
	i32 2562349572, ; 228: Microsoft.CSharp => 0x98ba5a04 => 108
	i32 2570120770, ; 229: System.Text.Encodings.Web => 0x9930ee42 => 178
	i32 2585220780, ; 230: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 177
	i32 2589602615, ; 231: System.Threading.ThreadPool => 0x9a5a3337 => 184
	i32 2593496499, ; 232: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 30
	i32 2605712449, ; 233: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 106
	i32 2617129537, ; 234: System.Private.Xml.dll => 0x9bfe3a41 => 153
	i32 2620871830, ; 235: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 86
	i32 2626831493, ; 236: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 25
	i32 2627185994, ; 237: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 124
	i32 2628210652, ; 238: System.Memory.Data => 0x9ca74fdc => 75
	i32 2640290731, ; 239: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 61
	i32 2640706905, ; 240: Azure.Core => 0x9d65fd59 => 45
	i32 2660759594, ; 241: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 77
	i32 2663698177, ; 242: System.Runtime.Loader => 0x9ec4cf01 => 159
	i32 2664396074, ; 243: System.Xml.XDocument.dll => 0x9ecf752a => 189
	i32 2665622720, ; 244: System.Drawing.Primitives => 0x9ee22cc0 => 127
	i32 2676780864, ; 245: System.Data.Common.dll => 0x9f8c6f40 => 120
	i32 2677098746, ; 246: Azure.Identity.dll => 0x9f9148fa => 46
	i32 2686887180, ; 247: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 164
	i32 2717744543, ; 248: System.Security.Claims => 0xa1fd7d9f => 167
	i32 2719963679, ; 249: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 169
	i32 2724373263, ; 250: System.Runtime.Numerics.dll => 0xa262a30f => 160
	i32 2732626843, ; 251: Xamarin.AndroidX.Activity => 0xa2e0939b => 78
	i32 2735172069, ; 252: System.Threading.Channels => 0xa30769e5 => 181
	i32 2737747696, ; 253: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 80
	i32 2740051746, ; 254: Microsoft.Identity.Client => 0xa351df22 => 57
	i32 2752995522, ; 255: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 31
	i32 2755098380, ; 256: Microsoft.SqlServer.Server.dll => 0xa437770c => 70
	i32 2758225723, ; 257: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 66
	i32 2764765095, ; 258: Microsoft.Maui.dll => 0xa4caf7a7 => 67
	i32 2765824710, ; 259: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 176
	i32 2778768386, ; 260: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 102
	i32 2785988530, ; 261: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 37
	i32 2801831435, ; 262: Microsoft.Maui.Graphics => 0xa7008e0b => 69
	i32 2804509662, ; 263: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 1
	i32 2806116107, ; 264: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 16
	i32 2810250172, ; 265: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 84
	i32 2831556043, ; 266: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 29
	i32 2841937114, ; 267: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 3
	i32 2853208004, ; 268: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 102
	i32 2861189240, ; 269: Microsoft.Maui.Essentials => 0xaa8a4878 => 68
	i32 2867946736, ; 270: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 77
	i32 2909740682, ; 271: System.Private.CoreLib => 0xad6f1e8a => 193
	i32 2916838712, ; 272: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 103
	i32 2919462931, ; 273: System.Numerics.Vectors.dll => 0xae037813 => 148
	i32 2940926066, ; 274: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 123
	i32 2944313911, ; 275: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 72
	i32 2959614098, ; 276: System.ComponentModel.dll => 0xb0682092 => 118
	i32 2968338931, ; 277: System.Security.Principal.Windows => 0xb0ed41f3 => 175
	i32 2972252294, ; 278: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 168
	i32 2978675010, ; 279: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 88
	i32 3012788804, ; 280: System.Configuration.ConfigurationManager => 0xb3938244 => 72
	i32 3023511517, ; 281: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 7
	i32 3033605958, ; 282: System.Memory.Data.dll => 0xb4d12746 => 75
	i32 3038032645, ; 283: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 44
	i32 3057625584, ; 284: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 95
	i32 3059408633, ; 285: Mono.Android.Runtime => 0xb65adef9 => 195
	i32 3059793426, ; 286: System.ComponentModel.Primitives => 0xb660be12 => 116
	i32 3077302341, ; 287: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 22
	i32 3084678329, ; 288: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 64
	i32 3090735792, ; 289: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 173
	i32 3099732863, ; 290: System.Security.Claims.dll => 0xb8c22b7f => 167
	i32 3103600923, ; 291: System.Formats.Asn1 => 0xb8fd311b => 129
	i32 3121463068, ; 292: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 132
	i32 3124832203, ; 293: System.Threading.Tasks.Extensions => 0xba4127cb => 182
	i32 3132293585, ; 294: System.Security.AccessControl => 0xbab301d1 => 166
	i32 3147165239, ; 295: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 126
	i32 3158628304, ; 296: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 9
	i32 3159123045, ; 297: System.Reflection.Primitives.dll => 0xbc4c6465 => 156
	i32 3178803400, ; 298: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 96
	i32 3220365878, ; 299: System.Threading => 0xbff2e236 => 185
	i32 3258312781, ; 300: Xamarin.AndroidX.CardView => 0xc235e84d => 82
	i32 3265893370, ; 301: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 182
	i32 3268887220, ; 302: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 2
	i32 3276600297, ; 303: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 6
	i32 3290767353, ; 304: System.Security.Cryptography.Encoding => 0xc4251ff9 => 171
	i32 3305363605, ; 305: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 17
	i32 3312457198, ; 306: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 60
	i32 3316684772, ; 307: System.Net.Requests.dll => 0xc5b097e4 => 142
	i32 3317135071, ; 308: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 87
	i32 3343947874, ; 309: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 2
	i32 3346324047, ; 310: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 97
	i32 3357674450, ; 311: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 34
	i32 3358260929, ; 312: System.Text.Json => 0xc82afec1 => 179
	i32 3362522851, ; 313: Xamarin.AndroidX.Core => 0xc86c06e3 => 85
	i32 3366347497, ; 314: Java.Interop => 0xc8a662e9 => 194
	i32 3374879918, ; 315: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 62
	i32 3374999561, ; 316: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 99
	i32 3381016424, ; 317: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 13
	i32 3428513518, ; 318: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 51
	i32 3430777524, ; 319: netstandard => 0xcc7d82b4 => 192
	i32 3463511458, ; 320: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 21
	i32 3471940407, ; 321: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 117
	i32 3476120550, ; 322: Mono.Android => 0xcf3163e6 => 196
	i32 3479583265, ; 323: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 34
	i32 3484440000, ; 324: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 33
	i32 3485117614, ; 325: System.Text.Json.dll => 0xcfbaacae => 179
	i32 3509114376, ; 326: System.Xml.Linq => 0xd128d608 => 187
	i32 3545306353, ; 327: Microsoft.Data.SqlClient => 0xd35114f1 => 48
	i32 3555084973, ; 328: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 0
	i32 3558648585, ; 329: System.ClientModel => 0xd41cab09 => 71
	i32 3561949811, ; 330: Azure.Core.dll => 0xd44f0a73 => 45
	i32 3570554715, ; 331: System.IO.FileSystem.AccessControl => 0xd4d2575b => 132
	i32 3570608287, ; 332: System.Runtime.Caching.dll => 0xd4d3289f => 76
	i32 3580758918, ; 333: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 41
	i32 3608519521, ; 334: System.Linq.dll => 0xd715a361 => 136
	i32 3624195450, ; 335: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 157
	i32 3641597786, ; 336: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 91
	i32 3643446276, ; 337: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 38
	i32 3643854240, ; 338: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 96
	i32 3657292374, ; 339: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 50
	i32 3660523487, ; 340: System.Net.NetworkInformation => 0xda2f27df => 140
	i32 3672681054, ; 341: Mono.Android.dll => 0xdae8aa5e => 196
	i32 3682565725, ; 342: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 81
	i32 3697841164, ; 343: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 43
	i32 3700591436, ; 344: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 59
	i32 3724971120, ; 345: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 95
	i32 3732100267, ; 346: System.Net.NameResolution => 0xde7354ab => 139
	i32 3748608112, ; 347: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 121
	i32 3786282454, ; 348: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 83
	i32 3792276235, ; 349: System.Collections.NonGeneric => 0xe2098b0b => 113
	i32 3802395368, ; 350: System.Collections.Specialized.dll => 0xe2a3f2e8 => 114
	i32 3803019198, ; 351: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 8
	i32 3823082795, ; 352: System.Security.Cryptography.dll => 0xe3df9d2b => 174
	i32 3841636137, ; 353: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 52
	i32 3848348906, ; 354: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 1
	i32 3849253459, ; 355: System.Runtime.InteropServices.dll => 0xe56ef253 => 158
	i32 3875112723, ; 356: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 171
	i32 3885497537, ; 357: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 147
	i32 3889960447, ; 358: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 42
	i32 3896106733, ; 359: System.Collections.Concurrent.dll => 0xe839deed => 111
	i32 3896760992, ; 360: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 85
	i32 3928044579, ; 361: System.Xml.ReaderWriter => 0xea213423 => 188
	i32 3931092270, ; 362: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 98
	i32 3953953790, ; 363: System.Text.Encoding.CodePages => 0xebac8bfe => 176
	i32 3955647286, ; 364: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 79
	i32 3980434154, ; 365: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 37
	i32 3987592930, ; 366: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 19
	i32 4003436829, ; 367: System.Diagnostics.Process.dll => 0xee9f991d => 122
	i32 4025784931, ; 368: System.Memory => 0xeff49a63 => 137
	i32 4046471985, ; 369: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 66
	i32 4054681211, ; 370: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 154
	i32 4068434129, ; 371: System.Private.Xml.Linq.dll => 0xf27f60d1 => 152
	i32 4073602200, ; 372: System.Threading.dll => 0xf2ce3c98 => 185
	i32 4094352644, ; 373: Microsoft.Maui.Essentials.dll => 0xf40add04 => 68
	i32 4099507663, ; 374: System.Drawing.dll => 0xf45985cf => 128
	i32 4100113165, ; 375: System.Private.Uri => 0xf462c30d => 151
	i32 4102112229, ; 376: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 32
	i32 4125707920, ; 377: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 27
	i32 4126470640, ; 378: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 51
	i32 4127667938, ; 379: System.IO.FileSystem.Watcher => 0xf60736e2 => 133
	i32 4147896353, ; 380: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 154
	i32 4150914736, ; 381: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 39
	i32 4159265925, ; 382: System.Xml.XmlSerializer => 0xf7e95c85 => 190
	i32 4164802419, ; 383: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 133
	i32 4181436372, ; 384: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 163
	i32 4182413190, ; 385: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 93
	i32 4196529839, ; 386: System.Net.WebClient.dll => 0xfa21f6af => 146
	i32 4213026141, ; 387: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 121
	i32 4257443520, ; 388: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 5
	i32 4260525087, ; 389: System.Buffers => 0xfdf2741f => 110
	i32 4263231520, ; 390: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 74
	i32 4271975918, ; 391: Microsoft.Maui.Controls.dll => 0xfea12dee => 65
	i32 4274976490, ; 392: System.Runtime.Numerics => 0xfecef6ea => 160
	i32 4292120959 ; 393: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 93
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [394 x i32] [
	i32 140, ; 0
	i32 139, ; 1
	i32 183, ; 2
	i32 3, ; 3
	i32 4, ; 4
	i32 123, ; 5
	i32 43, ; 6
	i32 172, ; 7
	i32 69, ; 8
	i32 158, ; 9
	i32 181, ; 10
	i32 4, ; 11
	i32 147, ; 12
	i32 172, ; 13
	i32 83, ; 14
	i32 7, ; 15
	i32 101, ; 16
	i32 40, ; 17
	i32 41, ; 18
	i32 118, ; 19
	i32 81, ; 20
	i32 108, ; 21
	i32 155, ; 22
	i32 8, ; 23
	i32 12, ; 24
	i32 40, ; 25
	i32 78, ; 26
	i32 70, ; 27
	i32 25, ; 28
	i32 90, ; 29
	i32 24, ; 30
	i32 134, ; 31
	i32 186, ; 32
	i32 144, ; 33
	i32 183, ; 34
	i32 137, ; 35
	i32 184, ; 36
	i32 44, ; 37
	i32 36, ; 38
	i32 115, ; 39
	i32 89, ; 40
	i32 173, ; 41
	i32 163, ; 42
	i32 191, ; 43
	i32 59, ; 44
	i32 149, ; 45
	i32 23, ; 46
	i32 17, ; 47
	i32 56, ; 48
	i32 53, ; 49
	i32 164, ; 50
	i32 47, ; 51
	i32 169, ; 52
	i32 31, ; 53
	i32 168, ; 54
	i32 87, ; 55
	i32 29, ; 56
	i32 178, ; 57
	i32 111, ; 58
	i32 143, ; 59
	i32 11, ; 60
	i32 187, ; 61
	i32 26, ; 62
	i32 14, ; 63
	i32 159, ; 64
	i32 71, ; 65
	i32 142, ; 66
	i32 134, ; 67
	i32 131, ; 68
	i32 35, ; 69
	i32 55, ; 70
	i32 120, ; 71
	i32 151, ; 72
	i32 130, ; 73
	i32 116, ; 74
	i32 38, ; 75
	i32 90, ; 76
	i32 126, ; 77
	i32 189, ; 78
	i32 150, ; 79
	i32 115, ; 80
	i32 100, ; 81
	i32 128, ; 82
	i32 52, ; 83
	i32 13, ; 84
	i32 79, ; 85
	i32 127, ; 86
	i32 135, ; 87
	i32 0, ; 88
	i32 92, ; 89
	i32 58, ; 90
	i32 117, ; 91
	i32 105, ; 92
	i32 73, ; 93
	i32 191, ; 94
	i32 26, ; 95
	i32 48, ; 96
	i32 32, ; 97
	i32 97, ; 98
	i32 30, ; 99
	i32 122, ; 100
	i32 28, ; 101
	i32 12, ; 102
	i32 88, ; 103
	i32 150, ; 104
	i32 136, ; 105
	i32 162, ; 106
	i32 42, ; 107
	i32 100, ; 108
	i32 84, ; 109
	i32 161, ; 110
	i32 10, ; 111
	i32 129, ; 112
	i32 143, ; 113
	i32 74, ; 114
	i32 16, ; 115
	i32 112, ; 116
	i32 131, ; 117
	i32 80, ; 118
	i32 56, ; 119
	i32 112, ; 120
	i32 130, ; 121
	i32 109, ; 122
	i32 20, ; 123
	i32 60, ; 124
	i32 15, ; 125
	i32 124, ; 126
	i32 180, ; 127
	i32 35, ; 128
	i32 76, ; 129
	i32 162, ; 130
	i32 46, ; 131
	i32 9, ; 132
	i32 107, ; 133
	i32 146, ; 134
	i32 94, ; 135
	i32 103, ; 136
	i32 63, ; 137
	i32 86, ; 138
	i32 138, ; 139
	i32 180, ; 140
	i32 165, ; 141
	i32 104, ; 142
	i32 141, ; 143
	i32 174, ; 144
	i32 170, ; 145
	i32 82, ; 146
	i32 33, ; 147
	i32 11, ; 148
	i32 186, ; 149
	i32 109, ; 150
	i32 125, ; 151
	i32 101, ; 152
	i32 53, ; 153
	i32 195, ; 154
	i32 27, ; 155
	i32 89, ; 156
	i32 19, ; 157
	i32 57, ; 158
	i32 47, ; 159
	i32 94, ; 160
	i32 105, ; 161
	i32 104, ; 162
	i32 98, ; 163
	i32 177, ; 164
	i32 161, ; 165
	i32 54, ; 166
	i32 39, ; 167
	i32 36, ; 168
	i32 135, ; 169
	i32 156, ; 170
	i32 63, ; 171
	i32 18, ; 172
	i32 113, ; 173
	i32 152, ; 174
	i32 49, ; 175
	i32 64, ; 176
	i32 15, ; 177
	i32 110, ; 178
	i32 92, ; 179
	i32 10, ; 180
	i32 58, ; 181
	i32 153, ; 182
	i32 91, ; 183
	i32 14, ; 184
	i32 125, ; 185
	i32 165, ; 186
	i32 148, ; 187
	i32 107, ; 188
	i32 119, ; 189
	i32 114, ; 190
	i32 190, ; 191
	i32 67, ; 192
	i32 22, ; 193
	i32 55, ; 194
	i32 54, ; 195
	i32 149, ; 196
	i32 106, ; 197
	i32 138, ; 198
	i32 24, ; 199
	i32 6, ; 200
	i32 62, ; 201
	i32 166, ; 202
	i32 50, ; 203
	i32 18, ; 204
	i32 99, ; 205
	i32 145, ; 206
	i32 28, ; 207
	i32 193, ; 208
	i32 5, ; 209
	i32 157, ; 210
	i32 141, ; 211
	i32 188, ; 212
	i32 61, ; 213
	i32 49, ; 214
	i32 170, ; 215
	i32 175, ; 216
	i32 23, ; 217
	i32 20, ; 218
	i32 119, ; 219
	i32 145, ; 220
	i32 192, ; 221
	i32 194, ; 222
	i32 65, ; 223
	i32 144, ; 224
	i32 73, ; 225
	i32 155, ; 226
	i32 21, ; 227
	i32 108, ; 228
	i32 178, ; 229
	i32 177, ; 230
	i32 184, ; 231
	i32 30, ; 232
	i32 106, ; 233
	i32 153, ; 234
	i32 86, ; 235
	i32 25, ; 236
	i32 124, ; 237
	i32 75, ; 238
	i32 61, ; 239
	i32 45, ; 240
	i32 77, ; 241
	i32 159, ; 242
	i32 189, ; 243
	i32 127, ; 244
	i32 120, ; 245
	i32 46, ; 246
	i32 164, ; 247
	i32 167, ; 248
	i32 169, ; 249
	i32 160, ; 250
	i32 78, ; 251
	i32 181, ; 252
	i32 80, ; 253
	i32 57, ; 254
	i32 31, ; 255
	i32 70, ; 256
	i32 66, ; 257
	i32 67, ; 258
	i32 176, ; 259
	i32 102, ; 260
	i32 37, ; 261
	i32 69, ; 262
	i32 1, ; 263
	i32 16, ; 264
	i32 84, ; 265
	i32 29, ; 266
	i32 3, ; 267
	i32 102, ; 268
	i32 68, ; 269
	i32 77, ; 270
	i32 193, ; 271
	i32 103, ; 272
	i32 148, ; 273
	i32 123, ; 274
	i32 72, ; 275
	i32 118, ; 276
	i32 175, ; 277
	i32 168, ; 278
	i32 88, ; 279
	i32 72, ; 280
	i32 7, ; 281
	i32 75, ; 282
	i32 44, ; 283
	i32 95, ; 284
	i32 195, ; 285
	i32 116, ; 286
	i32 22, ; 287
	i32 64, ; 288
	i32 173, ; 289
	i32 167, ; 290
	i32 129, ; 291
	i32 132, ; 292
	i32 182, ; 293
	i32 166, ; 294
	i32 126, ; 295
	i32 9, ; 296
	i32 156, ; 297
	i32 96, ; 298
	i32 185, ; 299
	i32 82, ; 300
	i32 182, ; 301
	i32 2, ; 302
	i32 6, ; 303
	i32 171, ; 304
	i32 17, ; 305
	i32 60, ; 306
	i32 142, ; 307
	i32 87, ; 308
	i32 2, ; 309
	i32 97, ; 310
	i32 34, ; 311
	i32 179, ; 312
	i32 85, ; 313
	i32 194, ; 314
	i32 62, ; 315
	i32 99, ; 316
	i32 13, ; 317
	i32 51, ; 318
	i32 192, ; 319
	i32 21, ; 320
	i32 117, ; 321
	i32 196, ; 322
	i32 34, ; 323
	i32 33, ; 324
	i32 179, ; 325
	i32 187, ; 326
	i32 48, ; 327
	i32 0, ; 328
	i32 71, ; 329
	i32 45, ; 330
	i32 132, ; 331
	i32 76, ; 332
	i32 41, ; 333
	i32 136, ; 334
	i32 157, ; 335
	i32 91, ; 336
	i32 38, ; 337
	i32 96, ; 338
	i32 50, ; 339
	i32 140, ; 340
	i32 196, ; 341
	i32 81, ; 342
	i32 43, ; 343
	i32 59, ; 344
	i32 95, ; 345
	i32 139, ; 346
	i32 121, ; 347
	i32 83, ; 348
	i32 113, ; 349
	i32 114, ; 350
	i32 8, ; 351
	i32 174, ; 352
	i32 52, ; 353
	i32 1, ; 354
	i32 158, ; 355
	i32 171, ; 356
	i32 147, ; 357
	i32 42, ; 358
	i32 111, ; 359
	i32 85, ; 360
	i32 188, ; 361
	i32 98, ; 362
	i32 176, ; 363
	i32 79, ; 364
	i32 37, ; 365
	i32 19, ; 366
	i32 122, ; 367
	i32 137, ; 368
	i32 66, ; 369
	i32 154, ; 370
	i32 152, ; 371
	i32 185, ; 372
	i32 68, ; 373
	i32 128, ; 374
	i32 151, ; 375
	i32 32, ; 376
	i32 27, ; 377
	i32 51, ; 378
	i32 133, ; 379
	i32 154, ; 380
	i32 39, ; 381
	i32 190, ; 382
	i32 133, ; 383
	i32 163, ; 384
	i32 93, ; 385
	i32 146, ; 386
	i32 121, ; 387
	i32 5, ; 388
	i32 110, ; 389
	i32 74, ; 390
	i32 65, ; 391
	i32 160, ; 392
	i32 93 ; 393
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
