project "nfd"
	kind "StaticLib"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/*.h",
    "src/*include.h",
    "src/nfd_common.c"
	}
  
	filter "system:linux"
		pic "On"
    language "C"

		systemversion "latest"
		staticruntime "On"

		files
		{
			"src/nfd_zenity.c"
		}

		defines
		{
			"_GLFW_X11"
		}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"
    language "C++"

		files
		{
			"src/nfd_win.cpp"
		}
