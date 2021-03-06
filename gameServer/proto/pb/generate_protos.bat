@rem Copyright 2016 gRPC authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem     http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.

@rem Generate the C# code for .proto files

setlocal

@rem enter this directory
cd /d %~dp0

set DESCRIP=%UserProfile%\.nuget\packages\Google.Protobuf.Tools\3.3.0\tools
set PROTOC=%UserProfile%\.nuget\packages\Google.Protobuf.Tools\3.3.0\tools\windows_x64\protoc.exe
set PLUGIN=%UserProfile%\.nuget\packages\Grpc.Tools\1.4.1\tools\windows_x64\grpc_csharp_plugin.exe


%PROTOC%  -I ./  --csharp_out ../ stream.proto --grpc_out ../ --plugin=protoc-gen-grpc=%PLUGIN%
%PROTOC%  -I ./  --csharp_out ../ simple.proto --grpc_out ../ --plugin=protoc-gen-grpc=%PLUGIN%
%PROTOC%  -I ./  --csharp_out ../ gshotel.proto --grpc_out ../ --plugin=protoc-gen-grpc=%PLUGIN%
%PROTOC%  -I ./  --csharp_out ../ errorcode.proto --grpc_out ../ --plugin=protoc-gen-grpc=%PLUGIN%
%PROTOC%  -I ./  --csharp_out ../ gsmvs.proto --grpc_out ../ --plugin=protoc-gen-grpc=%PLUGIN%
%PROTOC%  -I ./  --csharp_out ../ gsdirectory.proto --grpc_out ../ --plugin=protoc-gen-grpc=%PLUGIN%

pause
endlocal
