# VisualStudio2017InstallationScript

scripts for updating visual studio 2017 packages and installing visual studio 2017

## Recommended usage
1. Create a virtual disk file using `Disk Managment` like `vs2017.vhdx`
2. Initialize the virtual disk and perform a quick format
3. Mount virtual disk file by double click
4. Download installer program from [visualstudio.com](https://www.visualstudio.com/)
5. Copy script files and installer program into mounted disk
    
    for example
    ```
    I:
    |- clean.ps1 
    |- install.ps1
    |- update.ps1
    |- update_list.ps1
    |- vs_professional.exe
    ```
6. Get available componment ids

    Edit update_list.ps1 at the last line, select a **channel** (community/professional/enterprise), save the file, and run the script
7. Select what components you want by adding comments to exported text file
    
    The content would be copied to update.ps1 so powershell syntax of comments must be used
    ```Powershell
    # line comment
    <#
        block comment
    #>
    ```
8. Copy the content of text file into update.ps1

    Replace the array `$addpacks` with the content
9. Select language packs by edit array `$langs`
10. Run update.ps1 to download components
11. Edit and run install.ps1

## Scripts
### clean.ps1
Each time the update.ps1 gets runned, the installer will generate a folder and some temperory files, clean.ps1 scans those folders and remove them.

**in the lastest update, it seems the temperory files would be automatically removed after update operation completed**

### install.ps1
Install visual studio by execute the installer

### update.ps1
Generate commandline arguments and download components

### update_list.ps1
Update component list


