FROM microsoft/dotnet:2.0-sdk as build
WORKDIR /app
COPY ./app  /app
RUN dotnet restore
RUN dotnet build
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:2.0-runtime as runtime
WORKDIR /app
COPY --from=build /app/out ./
CMD ["dotnet" , "app.dll"]
