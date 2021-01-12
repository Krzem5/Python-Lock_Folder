@echo off
cls
if exist %1/desktop.ini (
	attrib -r %1
	cd %1
	attrib -s -h desktop.ini
	del desktop.ini
	cd ../
) else (
	attrib +r %1
	cd %1
	@echo [.ShellClassInfo]>desktop.ini
	@echo CLSID={2559a1f2-21d7-11d4-bdaf-00c04f60b9f0}>>desktop.ini
	attrib -a +s +h desktop.ini
	cd ../
)
