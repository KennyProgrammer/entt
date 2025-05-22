--/*********************************************************************/
--/*                                                                   */
--/*********************************************************************/
--/*                           Force Engine                            */
--/*              https://danil-dukhovenko.gitbook.io/force            */
--/*********************************************************************/
--/*                                                                   */
--/* API:  Premake5 file for build EnTT project.                       */
--/* File: ExampleApplication.lua                                      */
--/*                                                                   */
--/* Requirement:                                                      */
--/*  - ForceEngine.lua                                                */
--/*                                                                   */
--/* Copyright (c) 2020-2025 by KennyProgrammer (Danil Dukhovenko),    */
--/* All rights reserved.                                              */
--/*                                                                   */
--/* No parts of this code or any of its contents may be reproduced,   */
--/* copied, modified or adapted, without the prior written consent of */
--/* the author, unless otherwise indicated for stand-alone materials. */
--/*                                                                   */
--/*********************************************************************/

-- ImGuizmo EnTT Project
project "EnTT"
	kind          "StaticLib"
	language      "C++"
	cppdialect    "C++20"
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