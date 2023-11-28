--
-- Premake5 file for build EnTT project.
-- Copyright (c) 2020-2023 by Danil (Kenny) Dukhovenko, All rights reserved.
--
-- Requirement:
--  - ForceEngine.lua
--

-- ImGuizmo EnTT Project
project "EnTT"
	kind          "StaticLib"
	language      "C++"
	cppdialect    "C++17"
	staticruntime "On"
	targetdir     ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Lib")
	objdir        ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Obj")

	files {
		"include/**.hpp",
		"src/**.cpp"
	}
	
	includedirs {
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		
	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"