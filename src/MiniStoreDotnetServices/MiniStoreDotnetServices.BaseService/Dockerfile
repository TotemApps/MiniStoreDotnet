#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["MiniStoreDotnetServices.BaseService/MiniStoreDotnetServices.BaseService.csproj", "MiniStoreDotnetServices.BaseService/"]
RUN dotnet restore "MiniStoreDotnetServices.BaseService/MiniStoreDotnetServices.BaseService.csproj"
COPY . .
WORKDIR "/src/MiniStoreDotnetServices.BaseService"
RUN dotnet build "MiniStoreDotnetServices.BaseService.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "MiniStoreDotnetServices.BaseService.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "MiniStoreDotnetServices.BaseService.dll"]