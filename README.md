# guidgenerator-aspnet

This repository goes with an introduction to running ASP.NET and IIS on Windows Containers with Docker.

http://blog.alexellis.io/run-iis-asp-net-on-windows-10-with-docker/

If you are not creatinr your own WebAPI endpoint then you can use this project as an example, but you must do two things:

 - NuGet restore
 - Build the DLL with MSBuild

It is technically possible to run a NuGet restore and MSBuild task without installing Visual Studio - but this is your easiest option.


