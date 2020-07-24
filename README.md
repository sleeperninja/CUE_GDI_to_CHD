# CUE_GDI_to_CHD
_A drag and drop batch to convert recursive folders of CUE and GDI images to a CHD in the parent folder._

## I noticed
I noticed the batch files for chdman stopped working. Even GDItoCHD stopped working. Running the CHDMAN batch resulted in a weird nan% frozen in time like John Spartan. I decided to test various scenarios to find out. 

### Tested scenarios
1. Drag and drop folder nested in chdman folder
2. Recursive folder search, double clicking batch
3. CUE/GDI and supporting files same folder as chdman, double clicking batch
4. CUE/GDI and supporting files same folder as chdman, drag and drop to batch
5. Dreamcast GDI to CHD app

### Findings
1. Drag and drop nested folders never worked as far as I can recall.
2. Recursive double-click used to work, but stopped working.
3. Works; previously never tried same folder double-click because it means constant moving of chdman and batch. 
   1. Takeaway 1: provides confirmation that chdman actually does work.
   2. Takeaway 2: it is suspected chdman is no longer able to see the files referenced by the CUE/GDI.
4. Drag & Drop with all the files in the same folder works, but is also messy and time consuming.
   1. Takeaway 3: reinforces takeaway 2 from finding 3.
5. Dreamcast GDI to CHD now says it's working, but actually does nothing.

### Solution Planning
_There are several requirements for a user friendly solution_
1. Retain classic double-click support.
2. Adding Drag & Drop support means the solution is more portable than moving the files to some other directory to perform the compression operation. 
3. Session must be able to set the working directory be the same as the CUE/GDI/binaries.
4. In order to meet requirement 2, it must be able to call chdman from the batch location.
5. Must support recursive searching (raw Dreamcast rips are messy).
6. Support multiple nested images (raw Dreamcast rips are messy).
7. Must use a stupid easy format (for now).