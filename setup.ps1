# fetch dependencies
md .\dependencies

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/PixarAnimationStudios/OpenSubdiv/master/cmake/FindGLFW.cmake" -OutFile ".\dependencies\FindGLFW.cmake"

git clone https://github.com/Crascit/DownloadProject.git .\dependencies\DownloadProject

# create build and output folders
md .\build
md .\out