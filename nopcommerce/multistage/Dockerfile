FROM alpine:3 AS Downloader
ARG DOWNLOAD_LOCATION="https://github.com/nopSolutions/nopCommerce/releases/download/release-4.60.4/nopCommerce_4.60.4_NoSource_linux_x64.zip"
ADD ${DOWNLOAD_LOCATION} /nopCommerce/nopCommerce_4.60.4_NoSource_linux_x64.zip
RUN apk update && \
    apk add unzip && \
    cd /nopCommerce && \
    unzip nopCommerce_4.60.4_NoSource_linux_x64.zip && \
    mkdir bin logs &&\
    rm nopCommerce_4.60.4_NoSource_linux_x64.zip 
EXPOSE 5000 

FROM mcr.microsoft.com/dotnet/sdk:7.0
LABEL NAME="vinodreddy"
COPY --from=Downloader /nopCommerce /nopCommerce
ENV  ASPNETCORE_URLS="http://0.0.0.0:5000"
EXPOSE 5000
WORKDIR /nopCommerce
CMD ["dotnet", "Nop.Web.dll"]

