# Official Dart image: https://hub.docker.com/_/dart
# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.12)
FROM dart:stable AS build

WORKDIR /server
COPY /server/. .

RUN dart compile exe bin/hello.dart -o bin/hello

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /server/bin/hello /server/bin/
EXPOSE 8080
CMD ["/server/bin/hello"]