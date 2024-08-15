@echo off
echo Setting up Minecraft modding environment...

if not exist minecraft (
    mkdir minecraft
    echo Created minecraft directory.
) else (
    echo minecraft directory already exists.
)

if not exist mods (
    mkdir mods
    echo Created mods directory.
) else (
    echo mods directory already exists.
)

if not exist workspace (
    mkdir workspace
    echo Created workspace directory.
) else (
    echo workspace directory already exists.
)

echo.
echo Stopping any existing Docker containers...
docker-compose down

echo.
echo Building and starting Docker containers...
docker-compose up --build -d

echo.
echo Setup complete!
echo You can now access the VS Code environment at http://localhost:8180
echo Use the password specified in your docker-compose.yml file to log in.
echo.
echo To build your mod, open a terminal in VS Code and run: ./gradlew build
echo.
pause