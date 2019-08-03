project "YAML-CPP"
    kind "StaticLib"
    language "C++"
    staticruntime "on"
    
    targetdir ("Build/" .. outputdir .. "/%{prj.name}")
    objdir ("BinObjs/" .. outputdir .. "/%{prj.name}")
    
    includedirs {
        "include"
    }
    
    files {
        "src/*.cpp",
        "src/*.h",
        "src/contrib/*.cpp",
        "src/contrib/*.h"
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"