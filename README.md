Project 3 - Data Validation, Looping, and Constants
Due Feb 7 by 11:59pm Points 50 Submitting a file upload File Types asm Available after Jan 24 at 12am
Assignment Icon
Introduction
The purpose of this assignment is to reinforce concepts around looping, data validation, and control structures, to provide practice with signed arithmetic operations, and to bring the status register flags into focus (CLO 3, 4).

Implementing data validation
Implementing an accumulator
Integer arithmetic
Defining variables (integer and string)
Using constants (integer)
Using library procedures for I/O
Implementing control structures (decision, loop)
What you must do
Program Description
Write and test a MASM program to perform the following tasks:

Display the program title and programmer’s name.
Get the user's name, and greet the user.
Display instructions for the user.
Repeatedly prompt the user to enter a number.
Validate the user input to be in [-200, -100] or [-50, -1] (inclusive).
Notify the user of any invalid negative numbers (negative, but not in the ranges specified)
Count and accumulate the valid user numbers until a non-negative number is entered. Detect this using the SIGN flag.
(The non-negative number and any numbers not in the specified ranges are discarded.)
Calculate the (rounded integer) average of the valid numbers and store in a variable.
Display:
the count of validated numbers entered
NOTE: if no valid numbers were entered, display a special message and skip to (f)
the sum of valid numbers
the maximum (closest to 0) valid user value entered
the minimum (farthest from 0) valid user value entered
the average, rounded to the nearest integer
-20.01 rounds to -20
-20.5 rounds to -20
-20.51 rounds to -21
-20.99 rounds to -21
a parting message (with the user’s name)
Program Requirements
The program must be fully documented and laid out according to the CS271 Style Guide. This includes a complete header block for identification, description, etc., and a comment outline to explain each section of code.
The main procedure must be modularized into commented logical sections (procedures are not required this time)
The four value limits must be defined as constants.
The user input loop should terminate depending on the value of the SIGN flag.
The Min, Max, Count, Sum, and Average must all be stored in named variables as they are calculated.
Notes
This is an integer program. Even though it may make more sense to use floating-point computations, you are required to use signed integer computations.
Check the Course SyllabusPreview the document for late submission guidelines.
Find the assembly language instruction syntax and help in the CS271 Instructions Guide.
To create, assemble, run,  and modify your program, follow the instructions on the course Syllabus Page’s "Tools" tab.
Resources
Additional resources for this assignment

Project Shell with Template.asm
CS271 Style Guide
CS271 Instructions Reference
CS271 Irvine Procedure Reference
What to turn in
Turn in a single .asm file (the actual Assembly Language Program file, not the Visual Studio solution file).  File must be named "Proj3_ONID.asm" where ONID is your ONID username. Failure to name files according to this convention may result in reduced scores (or ungraded work). When you resubmit a file in Canvas, Canvas can attach a suffix to the file, e.g., the file name may become Proj3_ONID-1.asm. Don't worry about this name change as no points will be deducted because of this.

Example Execution
User input in boldface italics.

Welcome to the Integer Accumulator by General Kenobi
What is your name? Grievous
Hello there, Grievous


Please enter numbers in [-200, -100] or [-50, -1].
Enter a non-negative number when you are finished to see results.
Enter number: -15
Enter number: -550 
Number Invalid!
Enter number: -36
Enter number: -110
Enter number: 0
You entered 3 valid numbers.
The maximum valid number is -15
The minimum valid number is -110
The sum of your valid numbers is -161
The rounded average is -54

We have to stop meeting like this. Farewell, Grievous
Extra Credit (Original Project Definition must be Fulfilled)
To receive points for any extra credit options, you must add one print statement to your program output per extra credit which describes the extra credit you chose to work on. You will not receive extra credit points unless you do this. The statement must be formatted as follows...

--Program Intro--
**EC: DESCRIPTION

--Program prompts, etc—

Extra Credit Options
Number the lines during user input. Increment the line number only for valid number entries. (1pt)
Calculate and display the average as a decimal-point number , rounded to the nearest .01. This calculation would need to be done in addition to the normal program functionality, with the result printing after the rounded integer average. Do not use the Floating Point Unit. (2pt)
Grading criteria
Please view the rubric attached to this assignment to understand how your assignment will be graded. If you have any questions please ask on the course discussion board.

Rubric
Project 3 Rubric
Project 3 Rubric
Criteria	Ratings	Pts
This criterion is linked to a Learning OutcomePreliminaries - File Correctly Submitted
Submitted file is correct assignment and is an individual .asm file.
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomePreliminaries - Program Assembles & Links
Submitted program assembles and links without need for clarifying work for TA and/or messages to the student. Program must be an attempt at the assignment. Non-attempts which compile/link earn no points.
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeDocumentation - Identification Block - Header
Name, Date, Program number, etc as per Style Guide are included in Identification Block
1 pts
Full Marks
0 pts
Missing Info
Header block is not present, or is missing required information.
1 pts
This criterion is linked to a Learning OutcomeDocumentation - Identification Block - Program Description
Description of functionality and purpose of program in student's own words is included in identification block.
2 pts
Full Marks
1 pts
Lacking Detail
Description is present but is lacking in detail with regard to functionality.
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeDocumentation - Section Comments
Code section headers describe functionality and implementation of program flow. See CS271 Style Guide.
4 pts
Full Marks
0 pts
No Marks
4 pts
This criterion is linked to a Learning OutcomeDocumentation - In-line Comments
In-line comments contribute to understanding of program flow where necessary, but are not line-by-line descriptions of moving memory to registers. See CS271 Style Guide.
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomeVerification - Program Executes
Program executes and makes some attempt at the assigned functionality.
2 pts
Full Marks
1 pts
Failed Attempt
Program is an attempt at the correct assignment but simply does not run.
0 pts
Not An Attempt
Program executes but is either the incorrect program or some quickly mashed together nonsense, submitted only to 'get a few points'
2 pts
This criterion is linked to a Learning OutcomeCompleteness - Displays Title and Programmer Name
Program prints out the programmer's name and Program Title
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomeCompleteness - Displays Introduction
Displays program introduction. Program introduction should describe functionality of program.
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomeCompleteness - Gets / Uses User's Name
Receives input with ReadString. Saves input in a null-terminated BYTE array. Greets user (e.g. "Hello, Username")
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomeCompleteness - Prompts (with bounds) and Receives User Input
Prompts user to enter data, specifying bounds of acceptable inputs. Utilizes ReadInt to obtain user input.
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomeCompleteness - Validates User Data
Validates that user-entered values are within the advertised limits.
5 pts
Full Marks
2.5 pts
Partial
Middle values aren't rejected or neglects to check edge cases.
0 pts
No Marks
5 pts
This criterion is linked to a Learning OutcomeCompleteness - Notifies User of Invalid Data
Notifies user when entries are negative, but not within specified bounds.
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCompleteness - displays results or "no numbers" message
Displays calculated results, or displays "no numbers entered" error if program never received valid input before receiving terminal input.
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCompleteness - Displays Closing Message
1 pts
Full Marks
0 pts
No Marks
1 pts
This criterion is linked to a Learning OutcomeCorrectness - Counts numbers correctly
Counts only valid inputs. Negative inputs outside of specified bounds do not cause counter to increase.
3 pts
Full Marks
0 pts
No Marks
3 pts
This criterion is linked to a Learning OutcomeCorrectness - Detects lack of negative FLAG value
Validation of input range for terminal input should utilize a jump which checks status of sign flag.
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCorrectness - Stops loop when no negative FLAG
Correctly stops when receiving terminal input.
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCorrectness - Accumulates sum correctly
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCorrectness - Calculates and Rounds average correctly
See program description for rounding.
2 pts
Full Marks
1 pts
Rounding Issue
Calculation is off by 1 due to rounding
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCorrectness - Calculates and Prints Min and Max Correctly
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeRequirements - Range boundaries are defined constants.
All boundaries are defined and used as CONSTANTs (defined using 'EQU' or '=')
2 pts
Full Marks
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeRequirements - Program is well-modularized
Program is divided into logical sections based on function. Section comments should be used between sections, but points are not removed HERE for section comments issues.
4 pts
Full Marks
2 pts
Blocks without Headers
Program is separated into logical blocks but those blocks are poorly commented.
2 pts
Headers without Blocks
Program is not visibly separated into logical blocks with whitespace, but limited headers do indicate some organizational effort.
0 pts
No Marks
4 pts
This criterion is linked to a Learning OutcomeCoding Style - Uses appropriately named identifiers
Identifiers named so that a person reading the code can intuit the purpose of a variable, constant, or label just by reading its name. See CS271 Style Guide
2 pts
Full Marks
1 pts
Partial
Some identifiers are named well, with others having no relevance to their functionality.
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeCoding Style - Readability
Program uses readable white-space, indentation, and spacing as per the CS271 Style Guide. Logical sections are separated by white space.
2 pts
Full Marks
1 pts
Marginally Readable
Program is marginally readable but lacks proper alignment and white space.
0 pts
No Marks
2 pts
This criterion is linked to a Learning OutcomeExtra Credit
Numbered input lines (1pt) |
Decimal-point average calculation (2pts)
0 pts
Full Marks
0 pts
No Marks
0 pts
This criterion is linked to a Learning OutcomeLate Penalty
Remove points here for late assignments. (Enter negative point value)
0 pts
Full Marks
0 pts
No Marks
0 pts
Total Points: 50
