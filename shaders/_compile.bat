@echo off
:: C:/VulkanSDK/1.3.250.1/Bin/glslc.exe triangle.vert -o traingle.vert.spv
:: C:/VulkanSDK/1.3.250.1/Bin/glslc.exe triangle.frag -o traingle.frag.spv
:: pause

for %%i in (*.vert *.frag) do "C:\VulkanSDK\1.3.250.1\Bin\glslangValidator.exe" -V "%%~i" -o "%%~i.spv"
pause