# call_powershell_from_batch
A batch script that calls a powershell script and passes in arguments

Call "run_ps_script.bat" like this from a command line:

./run_ps_script.bat "ExecutableFilePath:ExecutableFilePath/Layer1/Layer2" "OutputFolder:thisfolder.txt" "Folder1:File1.txt" "Folder2:Location1/Location2/"

Expected Output From Batch File:

Using FilePath: ExecutableFilePath/Layer1/Layer2
Using OutputFolder:  thisfolder.txt
Using #1 Folder:  File1.txt
Using #2 Folder:  Location1/Location2/
Inside the powershell program. Here are the input variables.
ExecutableFilePath/Layer1/Layer2
thisfolder.txt
File1.txt
Location1/Location2/
