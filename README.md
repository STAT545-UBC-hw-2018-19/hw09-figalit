# STAT547 Homework 9 Repository of Figali Taho 

## Make activity

### The initial form of this assignment can be found [here](https://github.com/STAT545-UBC/make-activity).

### For this assignment, please visit the following files :point_down::

|   **Homework Files**   | **Description** |
|----------------|------------|
|[README.md](https://github.com/STAT545-UBC-students/hw09-figalit/blob/master/README.md)|This readme.md file provides an overview of the ghist of this repo and provides useful pointers to key files in my homework-9 repo |
|[initials.md](https://github.com/STAT545-UBC-students/hw09-figalit/blob/master/make-hw/initials.md)| This contains a rendered markdown file that shows an analysis for counting the frequency of the words based on their initials, or their first letter. |



| **Description**  | **Status** |
|------------------|------------|
| Added R [script](https://github.com/STAT545-UBC-students/hw09-figalit/blob/master/make-hw/countinitials.R) to write a csv file that shows the frequncy of words starting with any of the 26 letters. | 👍 |
| Added Rmd [file](https://github.com/STAT545-UBC-students/hw09-figalit/blob/master/make-hw/initials.rmd) to write a csv file that shows the frequncy of words starting with any of the 26 letters. | 👍 |
| Added python [script](https://github.com/STAT545-UBC-students/hw09-figalit/blob/master/make-hw/KeepGreaterThanK.py) to filter out words less than a parameter k | 👍 |
| Modified [Makefile](https://github.com/STAT545-UBC-students/hw09-figalit/blob/master/make-hw/Makefile) to reflect changes | 👍 |
|  | 👍 |

My analysis is about counting what words start with, and visualizing that in a nice histogram plot.

I have also added a python script that filters out words greater than an arbitrary value `k`, which is currently 2 for this analysis. 



EnjPlease note you can only run my analysis using `make initials` and `make clean_initials` to clean after this analysis. Similarly `make histogram` and `make clean_histogram` to clean after the initial analysis available with this package.

Currently `make clean` needs to be run in order for everything to be restored to initial state. oy!
