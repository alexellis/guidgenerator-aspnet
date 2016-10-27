## GuidGenerator for ASP.NET and WebAPI

This repository goes with an introduction to running ASP.NET and IIS on Windows Containers with Docker.

* [Blog post](http://blog.alexellis.io/run-iis-asp-net-on-windows-10-with-docker/)

If you want to try out the project then you can either create your own WebAPI projects by following the steps in the example or clone this repository and use the Dockerfiles as they are.

Take a look at build.ps1 which will:

* Run a NuGet package restore
* Build the C# code in a container with MSBuild (without Visual Studio needing to be installed)
* Build a brand new container with IIS and the DLLs created by the previous step

You can then navigate to a browser at http://localhost/api/values/ and see your GUID. For Windows 10 run a `docker inspect` command first to find the IP address of the machine.

A video walkthrough is available in the [Blog post](http://blog.alexellis.io/run-iis-asp-net-on-windows-10-with-docker/)
