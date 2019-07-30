project "Box2D"
    kind "StaticLib"
    language "C++"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "Box2D/**"
    }
    
    includedirs
    {
        "."
    }
    
    filter "system:windows"
        systemversion "latest"
        cppdialect "C++11"
        staticruntime "on"
        
    filter { "system:windows", "configurations:Debug" }
        buildoptions "/MTd"
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"