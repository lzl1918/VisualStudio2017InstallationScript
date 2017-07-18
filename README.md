# VisualStudio2017InstallationScript

scripts for updating visual studio 2017 packages and installing visual studio 2017

## What's new:
1. A tool to compare component changes
2. `clean.ps1` removed


## Recommended usage
1. Create a virtual disk file using `Disk Managment` like `vs2017.vhdx`
2. Initialize the virtual disk and perform a quick format
3. Mount virtual disk file by double click
4. Download installer program from [visualstudio.com](https://www.visualstudio.com/)
5. Copy script files and installer program into mounted disk
    
    for example
    ```
    I:
    |- clean.ps1 (removed at 2017/7/18)
    |- compare.ps1 (added at 2017/7/18)
    |- ComparePackages.exe (added at 2017/7/18)
    |- install.ps1
    |- update.ps1
    |- update_list.ps1
    |- vstype.ps1
    |- vs_professional.exe
    |- ...
    ```
6. Select product channel

    Change product type of visual studio in `vstype.ps1`, value can be `community/professional/enterprise`

7. Get available componment ids

    run `update_list.ps1`, and components will be saved into `packages.txt`
8. Select what components you want by adding comments to exported text file
    
    Rename `packages.txt` as `installed_packs.txt` and add comments to skip unused components.
    The content of this file would be copied to `update.ps1` so powershell syntax of comments must be used
    ```Powershell
    # line comment
    <#
        block comment
    #>
    ```

9. Select language packs

    Edit array `$langs` in `update.ps1`

10. Run update.ps1 to download components

11. Run install.ps1

## Scripts
### clean.ps1
Each time the update.ps1 gets runned, the installer will generate a folder and some temperory files, clean.ps1 scans those folders and remove them.

**Removed, in the lastest update, it seems the temperory files would be automatically removed after update operation completed**

### install.ps1
Install visual studio by execute the installer

### update.ps1
Generate commandline arguments and download components

### update_list.ps1
Update component list

### compare.ps1
Compare packages in `packages.txt` and `installed_packages.txt`.

### vstype.ps1
Export product channel.

