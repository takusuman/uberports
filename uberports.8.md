% UBERPORTS(8) uberports  0.1
% Luiz Antônio Rangel
% February 2021

# NAME
uberports - BSD Ports-like Slackbuild manager

# SYNOPSIS
**uberports** [-S|-u|-s *package name* |-d|-V|-h]

# DESCRIPTION
**uberports** is a **free** (as in freedom of speech) and hackable Slackbuild manager that works just like BSD Ports.  

It works in an extremely simple way.  
**And yes, there's no automation**: the responsibility is from who's between the chair and the keyboard.  
Slackware is a **real operating system for real users**, so i believe that you should be used to this philosophy.  

## Why create "yet another Slackware-aimed BSD Ports clone"?
- First of all, competition is good, principally if it's offering more freedom;  
- Another implementations (like sport/slackports or retroports) are GPL'ed unnecessarily (see my thoughs at **COPYRIGHT**);  
- The cited above implementations are hard to read/hack and bloated.  
So, at the height of my ego, i've thought that i could do it better, __and i did it__ (along with a video showing the process, which is on Youtube, saying this just for sake of curiosity).  

# OPTIONS
**-S** 
: Syncs the Slackbuild repository via git.  
**-u**
: Updates the repository to the newest commit on the branch (that corresponds to $VERSION).  
**-s**
: Search a package in the Slackbuilds source tree.  
**-d**
: Download the source code of the package that you've selected from the source tree when entering it's directory.  
**-V**
: Prints version and copyright.  
**-\***
: Prints help.  

# RETURN STATUS
**0**
: Sucess.  
**0 < X**
: Figure it out on your own. 

# BUGS
No.

# COPYRIGHT
Copyright (C) 2021 Luiz Antônio Rangel.   

## License 
Volkerdings-Slackware (or ISC, at your preference) <http://pindorama.tk/texto/licencas/copycenter/VOLKERDINGS-SLACKWARE_LICENSE.html>.  

Unnecessary GPL'ing/Copyleft'ing considered harmful.  
The line below contains a quote from the Heirloom Toolchest LICENSE/README\(,.txt\):  
_"[...] any license that requires more than naming the author would only cause annoyance."_  

Use GPL in the right way, not in any heap of hacks that you create.  
_"Stop using bulletproof vests like they were umbrellas."_
