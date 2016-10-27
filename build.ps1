Remove-Item GuidGenerator\\bin -Recurse 
docker build --build-arg HTTP_PROXY=%HTTP_PROXY% --build-arg HTTPS_PROXY=%HTTPS_PROXY% -f build.Dockerfile -t guid-generator-assets .

docker create --name guid-generator-assets-1 guid-generator-assets

docker cp guid-generator-assets-1:C:\\build\\GuidGenerator\\bin .\\GuidGenerator\bin
docker rm guid-generator-assets-1

docker build -f Dockerfile -t guid-generator:0.1 .

