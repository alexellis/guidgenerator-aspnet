FROM alexellisio/msbuild:12.0
SHELL ["powershell"]

COPY . 'C:\\build\\'
WORKDIR 'C:\\build\\'

RUN ["nuget.exe", "restore"]
RUN ["C:\\Program Files (x86)\\MSBuild\\12.0\\Bin\\msbuild.exe", "C:\\build\\GuidGenerator.sln"]

## Usage: build image, then create container and copy out the bin directory.

CMD ["powershell"]

