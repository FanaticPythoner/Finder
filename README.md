# Finder
Finder search and copy any files with a specified name or extension to a specified destination. All files that finder found are stored in the folder "Files". During process, text files with a specific drive letter will be created in the folder "Drives" (for example, Drives_c.txt). These files contains where the files were before Finder copied them. The folder "Files" is located in the location you specified in "Enter FULL destination folder:". The folder "Drives" is located in the same folder as Finder.exe.

### Limitations : ###

- Finder was made in Batch, meaning it was made for Windows. However, you can maybe make it work with modules like Wine on linux, but I didn't test it.

# Installation : #
To use Finder, create a folder where you want to install it. Then, copy Finder in that folder. 
Start Finder and just follow simple steps on screen. Enjoy finding anything you want.

### Note : ###
If you want to copy system or hidden files, please launch an Administrator version of Finder.

### Usage : ###
Once you installed Finder, run it. A UI like this will appear :

![alt text](https://i.imgur.com/uZxrkue.jpg)

Now, as it says, type the full path of the folder where you want your lost files to be recovered in. Here, I will enter "C:\Users\NoOne\Desktop\OutputFolder\\" for demonstration purposes (Note that I added a "\\" in the end of the destination folder. This is important) :

![alt text](https://i.imgur.com/c378Myr.jpg)

Finder then asks us to enter the full or the part of a file name. The search is not case sentitive : "README" will be threated the same as "readme". If we enter "\*" or literally just hit enter without entering nothing, It will literally take any file with a name, regardless of what it is, with the extension we will specify at the next step. Here, if we enter "readme", it will find every single file with "readme" in its name. For the sake of this demonstration, I will enter "readme" :

![alt text](https://i.imgur.com/zzMA1hl.jpg)

Now, we need to do the same thing for the extension. It works the exact same way as for the file name (not case sentitive, etc). Here, I will enter "\*", because I want every single file that have "readme" in its name, regardless of the extension.

![alt text](https://i.imgur.com/T6TGyYb.jpg)

Finder is now doing its work. We can see in the windows bar a progress percentage. Here are the description of the different phases:

- *Pre-Phase* : Create the folder "Drives" and "Logs" where Finder is installed. What these folder do is described in the first paragraph of this README file. See picture below.

###### WARNING : If you don't want to sabotage the process, do not modify in any circumstances anything in these 2 folders when Finder is doing its work. ######

![alt text](https://i.imgur.com/3Yz63zi.jpg)

- *Phase 1* : Search all files with the specified file name and extension. In this demonstration. every file with "readme" in its name and any extension, and export the path of the found files in the Drives folder, as  described in the first paragraph of this README.

- *Phase 2* : Copy all the files it found in the destination folder specified at the very first step of the process, here "C:\Users\NoOne\Desktop\OutputFolder\\". Note that Finder created the folder "Files" inside the destination folder, where it copied the file it found. This ensure that if there are other files in the folder, files that were there doesn't get mixed with the files Finder found. The "Real" destination folder is actually "C:\Users\NoOne\Desktop\OutputFolder\Files". Here you can see in this screenshot the destination path with all the files Finder found in this demonstration : 

![alt text](https://i.imgur.com/cv59J7a.jpg)

- *Phase 3* : Delete the temporary files it used. This doesn't matter to you.

Once done, Finder asks us if we want to find anything else. We are done, so we can enter "NO" and let Finder close himself after a couple of seconds, with a little message : 

![alt text](https://i.imgur.com/kVd4Af6.jpg)


### Note : ###

If you want to see the files Finder found originaly where before it copied them, you can either go in the Log folder and check the logs, or go in the Drives folder and check the files paths in all drives text file.
