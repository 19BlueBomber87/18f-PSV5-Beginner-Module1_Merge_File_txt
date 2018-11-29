#Install-Module <@:D Save the following as a .psm1 file
#Place This .psm1 File in $ENV:PSModulePath
#Function_1
##BB-s18_Merge_Files_Example1-TXT
#Function_2
##BB-s18_Merge_Files_Example2-TXT
#18f-PSV5-M1-Merge_Files_Example_
#Function_
function BB-s18_Merge_Files_Example1-TXT
{
    function Create-Example_Files_18f-PSV5-M1-X1
    {
    "########_[1]<@:D Example File 1 Start <@:D" | out-file C:\Kruse\18f-testing\18f-Child-File_1.txt
    "########_[2]<@:D Example File 2 Start <@:D_########" | Out-file C:\Kruse\18f-testing\18f-Child-File_2.txt
    "[3]<@:D Example File 3 Start <@:D#######" | Out-File C:\Kruse\18f-testing\18f-Child-File_3.txt
    Notepad C:\Kruse\18f-testing\18f-Child-File_1.txt
    Notepad C:\Kruse\18f-testing\18f-Child-File_2.txt
    Notepad C:\Kruse\18f-testing\18f-Child-File_3.txt
    explorer C:\Kruse\18f-testing
    }
Create-Example_Files_18f-PSV5-M1-X1
Write-Verbose -Message "_Example_1_Files_Created_" -Verbose *>&1
#Create Parent_File
    Read-Host "Start Merge_File-X1"
    Stop-Process -ProcessName notepad
    Stop-Process -ProcessName explorer
    cls
"ParentFile_Example_[01]
[Merge-File-Example_1]" | Out-File C:\Kruse\18f-Parent_File.txt
Write-Verbose -Message "_Parent_File_Created_" -Verbose *>&1
    explorer C:\Kruse\
    notepad C:\Kruse\18f-Parent_File.txt
    Read-Host "_Ready_To_Merge_Child-Files[3-Total] into the Parent-File[1-Total]?"
    cls
Add-Content C:\kruse\18f-Parent_File.txt -Value $(Get-Content "C:\Kruse\18f-testing\18f-Child-File_1.txt") , $(Get-Content "C:\Kruse\18f-testing\18f-Child-File_2.txt"), $(Get-Content "C:\Kruse\18f-testing\18f-Child-File_3.txt")
Write-Verbose -Message "_Files_Merged" -Verbose *>&1
    notepad C:\Kruse\18f-Parent_File.txt
}
######ILOVEBRAKESANDMODULES######################################################################################################################################################################################################################################################################ILOVEBRAKES<@:D####################
#Function_2
function BB-s18_Merge_Files_Example2-TXT
{
    function Create-Example_Files_18f-PSV5-M1-X2
    {
    "########_[1]<@:D Example File 1 Start <@:D" | out-file C:\Kruse\18f-testing\18f-Child-File_1.txt
    "########_[2]<@:D Example File 2 Start <@:D_########" | Out-file C:\Kruse\18f-testing\18f-Child-File_2.txt
    "[3]<@:D Example File 3 Start <@:D#######" | Out-File C:\Kruse\18f-testing\18f-Child-File_3.txt

    Notepad C:\Kruse\18f-testing\18f-Child-File_1.txt
    Notepad C:\Kruse\18f-testing\18f-Child-File_2.txt
    Notepad C:\Kruse\18f-testing\18f-Child-File_3.txt
    explorer C:\Kruse\18f-testing
    }
Create-Example_Files_18f-PSV5-M1-X2
Write-Verbose -Message "_Example_2_Files_Created_" -Verbose *>&1
#Create Parent_File
    Read-Host "Start Merge_File-X2"
    Stop-Process -ProcessName notepad
    Stop-Process -ProcessName explorer
    cls
"ParentFile_Example_[02] 
[Merge-File-Example_2]" | Out-File C:\Kruse\18f-Parent_File.txt
Write-Verbose -Message "_Parent_File_Created_" -Verbose *>&1
    explorer C:\Kruse\
    notepad C:\Kruse\18f-Parent_File.txt
    Read-Host "_Ready_To_Merge_Child-Files[3-Total] into the Parent-File[1-Total]?"
    cls
Add-Content C:\kruse\18f-Parent_File.txt -Value $(Get-Content "C:\Kruse\18f-testing\18f-Child-File_1.txt"), 
$(Get-Content "C:\Kruse\18f-testing\18f-Child-File_2.txt"),
$(Get-Content "C:\Kruse\18f-testing\18f-Child-File_3.txt") -NoNewline
Write-Verbose -Message "_Files_Merged" -Verbose *>&1
    notepad C:\Kruse\18f-Parent_File.txt
}