# Stage 1: Get dependencies and build the executable.
# Use the official Dart SDK image.
FROM dart:stable AS build

WORKDIR /app

# Copy only the files needed to get dependencies.
COPY pubspec.yaml pubspec.lock ./
RUN dart pub get

# Copy the rest of the application source code.
COPY . .

# Compile the application.
RUN dart compile exe bin/solid_principles_v2.dart -o bin/server

# Stage 2: Create the final, small, and secure production image.
# Use a minimal 'scratch' image which has nothing in it.
FROM scratch
COPY --from=build /app/bin/server /server
ENTRYPOINT ["/server"]