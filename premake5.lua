--
-- Premake5 file for build EnTT project.
-- Copyright (c) 2020-2023 by Danil (Kenny) Dukhovenko, All rights reserved.
--

-- ImGuizmo EnTT Project
project "EnTT"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"include/**.hpp",
		"src/**.cpp"
	}
	
	includedirs {
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"
		
	filter "system:linux"
		pic "On"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"