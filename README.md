<div align="center"><img src ="https://github.com/Fourth-Year-Functional-Programming/Racket-Countdown-Fourth-Year/blob/development/ExternalImages/CountdownReadme.jpg" width="900" height="400"/></div>

# Countdown Numbers Game

**Student Name:** Christy Madden <br />
**Student ID:** G00214065 <br />
**Module:** Theory of Algorithms <br />
**Lecturer:** Dr Ian McLoughlin <br />

# Introduction

### What is the application?

This application is a version of the TV show Countdown's number round. It replicates the structure of the show by having a target number which needs to be match by performing arithmetic operations on 6 numbers that are randomly choosen.

### What does the application run on?

This application is built using Racket and will run on any machine or OS once it has Racket installed. 

### What libraries does the application use?

The application uses the standard Racket package and no imports are needed.

### How can the application be deployed?

The application can be downloaded as a zip folder or cloned from GitHub repository. If doing so, use the master branch as that will have the final working version of the program. The script to run is 

```
countdown.rkt
```

It is best to run this in the editor DrRacket. You can run it from the command line but this is **NOT** recommended as it can bring up errors that don't occur in DrRacket. If you still want to run it off the command line, you can navigate to the directory that the script is in and run the following command

```
racket countdown.rkt
```
### What licence does the repository have?

The repository has the Mozilla Public License 2.0. What this licences says about the code in this repository

* Can be freely used once the source code for changes are made available under the Mozilla Public Licence 
* Copies of the original or instructions on how to get the original must be distributed
* Original copyright must be included
* Can be used commercially, modified, distributed and sublicensed

### What is the gitignore file and where did it come from?

* Contains code to remove  DrRacket autosave files
* Found at the GitHub gitignore repository - https://github.com/racket/racket/blob/master/.gitignore



# Technologies used

**Operating System:** Linux Mint 18.1 “Serena” <br />
**IDE:** DrRacket 6.7 <br />
**Software Version Control:** Git 2.7.4 <br />
**Hosting Site:** GitHub <br />
**Programming Language:** Racket <br />
**Project Management** Zube.io <br />
**Testing** Travis CI <br />
**Documentation:** GitHub Wiki <br />

# Features 

### Wiki

A full wiki containing relevant information can be found at this link https://github.com/Fourth-Year-Functional-Programming/Racket-Countdown-Fourth-Year/wiki. It is __strongly__ suggested that you go here to read about the development of the project and all it's **_extras_**. This is where the project is dicussed in detail.

### Random Target Number

The program generates a differnent target number on each run.

```Racket
(define target (random 101 999))
```

### Permutations

Program creates a list of permutations that start and end in a manner which allows the permutation to be in the form of valid Reverse Polish Notation.

```Racket
; Get permutations of the list and remove duplicates then store in new list called dup-free
(define dup-free (remove-duplicates (permutations mock-list)))
```

```Racket
; Function to append numbers to start of above permutations and an operator to the end
(define (make-rpn l)
  (append (list 5 6) l (list '*)))
```

```Racket
; Use map function to create lists of permutations that can be valid Reverse Polish Notation 
; and store in new list called perm-list
(define perm-list (map make-rpn dup-free))
```

