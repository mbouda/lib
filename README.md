# lib
Library of supporting functions.

# Directory structure
By default, code from individual project repos expects to be placed in a project directory within a root matlab directory, like so:\
~/matlab_root/\
~/matlab_root/projectA/\
~/matlab_root/projectA/src/\
~/matlab_root/projectA/data/\
~/matlab_root/projectB/\
~/matlab_root/projectB/src/\
...

To avoid duplication, code common to multiple projects will increasingly be placed in this library, added to the matlab path by the init function of each project. 
By default, project code expects this library of common functions to be placed in:\
~/root/lib/

# Installation, Updating, Use
All a user needs to do is to copy this code to a directory visible to matlab during execution of project code. Theproject code will automatically make use of it as needed.
When updating to a new version of code on a particular project, the user should check whether the common library needs to be updated as well. 
Keeping both up to date is required for project code to run correctly.
