/**
* project2.pl
*
* This program contains a database of GVSU CIS faculty and the classes they
* teach. It also contains rules that answer the following questions:
*
*   1) What does Dr. J. Leidig teach?
*   2) Does Dr. J. Leidig teach Database?
*   3) What is Dr. J. Leidig's schedule?
*   4) Who is scheduled to teach what subject on TTH, 10AM?
*   5) When do Dr. J. Leidig and Dr. El-Said teach at the same time?
*   6) Who teaches at the same time as Dr. J. Leidig?
*   7) What courses do Jim and Pam have in common?
*   8) Who is taking CS courses?
*   9) What types of courses is Gaius Baltar taking?
*   10) Are there any scheduling conflicts of profs or locations?
*
* @author Kevin Anderson & Cyril Casapao
*/

/**
* Define the professors.
*/
profesor("Dr. Engelsma").
profesor("Mr. Lange").
profesor("Dr. P. Leidig").
profesor("Dr. Kalafut").
profesor("Dr. Wolffe").
profesor("Dr. Kurmas").
profesor("Dr. Schymik").
profesor("Ms. Peterman").
profesor("Dr. Engelsma").
profesor("Dr. El-Said").
profesor("Dr. Scripps").
profesor("Dr. J. Leidig").
profesor("Dr. Trefftz").
profesor("Dr. Kalafut").
profesor("Dr. Alsabbagh").
profesor("Dr. Jorgensen").
profesor("Dr. Nandigam").
profesor("Mr. Lange").
profesor("Dr. El-Said").
profesor("Ms. Posada").
profesor("Dr. Du").
profesor("Dr. J. Leidig").
profesor("Dr. J. Leidig").
profesor("Dr. J. Leidig").

/**
* Define the students.
*/
student("Jim").
student("Pam").
student("Kara Thrace").
student("Gaius Baltar").

/**
* Define the department each professor belongs to.
*/
department("Dr. Engelsma", "CS").
department("Mr. Lange", "IS").
department("Dr. P. Leidig", "IS").
department("Dr. Kalafut", "CS").
department("Dr. Wolffe", "CS").
department("Dr. Kurmas", "CS").
department("Dr. Schymik", "IS").
department("Ms. Peterman", "IS").
department("Dr. Engelsma", "CS").
department("Dr. El-Said", "IS").
department("Dr. Scripps", "CS").
department("Dr. J. Leidig", "CS").
department("Dr. Trefftz", "CS").
department("Dr. Kalafut", "CS").
department("Dr. Alsabbagh", "CS").
department("Dr. Jorgensen", "CS").
department("Dr. Nandigam", "CS").
department("Mr. Lange", "IS").
department("Dr. El-Said", "IS").
department("Ms. Posada", "IS").
department("Dr. Du", "IS").
department("Dr. J. Leidig", "CIS").
department("Dr. J. Leidig", "CIS").
department("Dr. J. Leidig", "CIS").


/**
* Define the class names.
*/
class_name(467, "CS Project").
class_name(463, "IS Project").
class_name(460, "MIS").
class_name(457, "Data Communications").
class_name(452, "OS Concepts").
class_name(451, "Computer Architecture").
class_name(450, "IS Project Management").
class_name(443, "Software Development Tools").
class_name(437, "Distributed Computing").
class_name(375, "Wireless Networking Systems").
class_name(371, "Web Applicatino Programming").
class_name(365, "AI").
class_name(361, "System Programming").
class_name(358, "Information Insurance").
class_name(353, "Database").
class_name(350, "Software Engineering").
class_name(343, "Structure of Programming Languages").
class_name(339, "IT Project Management").
class_name(337, "Network Systems Management").
class_name(333, "DB Management and Implementation").
class_name(330, "Systems Analysis and Design").
class_name(661, "Medical and BioInformatics").
class_name(671, "Information Visualization").
class_name(691, "MBI Capstone").


/**
* Define class times and locations. The fact can be read like this:
*
* class_details(class number, start time, end time, days, location)
*/
class_details(467, '10:00AM', '10:50AM', 'MWF', 'MAK-B-1-118').
class_details(463, '2:00PM', '2:50PM', 'MWF', 'MAK-D-2-123').
class_details(460, '10:00AM', '11:15AM', 'TR', 'MAK-B-1-116').
class_details(457, '2:00PM', '2:50PM', 'MWF', 'MAK-D-1-117').
class_details(452, '1:00PM', '1:50PM', 'MWF', 'MAK-D-1-117').
class_details(451, '10:00AM', '10:50AM', 'MWF', 'MAK-B-1-118').
class_details(450, '12:00PM', '12:50PM', 'MWF', 'MAK-D-1-117').
class_details(443, '11:00AM', '11:50AM', 'MWF', 'MAK-B-1-124').
class_details(437, '10:00AM', '10:50AM', 'MWF', 'MAK-B-1-118').
class_details(375, '6:00PM', '7:50PM', 'R', 'EC 612').
class_details(371, '4:00PM', '5:15PM', 'TR', 'MAK-D-1-117').
class_details(365, '10:00AM', '11:15AM', 'TR', 'MAK-D-1-117').
class_details(361, '4:00PM', '5:15PM', 'MW', 'MAK-B-1-116').
class_details(358, '3:00PM', '3:50PM', 'MWF', 'MAK-A-1-105').
class_details(353, '12:00PM', '12:50PM', 'MWF', 'MAK-B-1-118').
class_details(350, '10:00AM', '10:50AM', 'MWF', 'MAK-D-1-117').
class_details(343, '1:00PM', '1:50PM', 'MWF', 'MAK-B-1-124').
class_details(339, '1:00PM', '2:15PM', 'TR', 'MAK-A-1-105').
class_details(337, '3:00PM', '3:50PM', 'TR', 'MAK-B-1-124').
class_details(333, '6:00PM', '8:50PM', 'W', 'MAK-D-1-117').
class_details(330, '9:00AM', '9:50AM', 'MWF', 'MAK-D-1-117').
class_details(661, '6:00PM', '8:50PM', 'T', 'EC 612').
class_details(671, '6:00PM', '8:50PM', 'R', 'EC 612').
class_details(691, '6:00PM', '8:50PM', 'M', 'EC 612').

/**
* Define the classes each professor teaches.
*/
teaches("Dr. Engelsma", 467).
teaches("Mr. Lange", 463).
teaches("Dr. P. Leidig", 460).
teaches("Dr. Kalafut", 457).
teaches("Dr. Wolffe", 452).
teaches("Dr. Kurmas", 451).
teaches("Dr. Schymik", 450).
teaches("Ms. Peterman", 443).
teaches("Dr. Engelsma", 437).
teaches("Dr. El-Said", 375).
teaches("Dr. Scripps", 371).
teaches("Dr. J. Leidig", 365).
teaches("Dr. Trefftz", 361).
teaches("Dr. Kalafut", 358).
teaches("Dr. Alsabbagh", 353).
teaches("Dr. Jorgensen", 350).
teaches("Dr. Nandigam", 343).
teaches("Mr. Lange", 339).
teaches("Dr. El-Said", 337).
teaches("Ms. Posada", 333).
teaches("Dr. Du", 330).
teaches("Dr. J. Leidig", 661).
teaches("Dr. J. Leidig", 671).
teaches("Dr. J. Leidig", 691).

/**
* Define the classes each student is taking.
*/
taking("Jim", 467).
taking("Jim", 452).
taking("Jim", 457).
taking("Pam", 437).
taking("Pam", 457).
taking("Pam", 452).
taking("Kara Thrace", 467).
taking("Kara Thrace", 452).
taking("Kara Thrace", 365).
taking("Gaius Baltar", 463).
taking("Gaius Baltar", 460).
taking("Gaius Baltar", 375).


/**********************************************************************
* 1) What does Dr. J. Leidig teach?
*
* Inputs: (Professor, Class)
* Description: Returns the courses Professor teaches.
**********************************************************************/
answer_one(P, C) :-
    teaches(P, C),
    write("CIS "),write(C),nl.

/**********************************************************************
* 2) Does Dr. J. Leidig teach Database?
*
* Inputs: (Professor, Value)
* Description: Returns whether or not Professor teaches Database.
**********************************************************************/
answer_two(P) :-
    teaches(P, 353) -> write(yes),nl; write(no), nl.


/**********************************************************************
* 3) What is Dr. J. Leidig's schedule?
* class_details(691, '6:00PM', '8:50PM', 'M', 'EC 612').
* Inputs: (Prof, Class, Start, End, Days, Location)
* Description: Returns Professor's schedule.
**********************************************************************/
answer_three(P, _, S, E, D, L) :-
    teaches(P, X),
    class_details(X, S, E, D, L),
    write('Teaches CIS'),write(X),write(' from '),
    write(S),write(' to '),write(E),write(' on '),
    write(D),write(' at '),write(L),nl.


/**********************************************************************
* 4) Who is scheduled to teach what subject on TTH, 10AM?
*
* Inputs: (Days, StartTime)
* Description: Returns who teaches what on Days at Time.
**********************************************************************/
answer_four(D, T) :-
    class_details(C, T, _, D, _), teaches(X, C),
    write(X), nl.

/**********************************************************************
* 5) When do Dr. J. Leidig and Dr. El-Said teach at the same time?
*
* Inputs: (Professor1, Professor2)
* Description: Returns whether or not two professors teach at the
* same time.
**********************************************************************/
answer_five(X, Y) :-
    teaches(X, I),
    teaches(Y, J),
    class_details(I, T, _, _, _),
    class_details(J, T, _, _, _),
    write(T), nl.


/**
* Print answers to questions.
*
* @TODO: Print variable values instead of memory addresses.
*/
print_answers :-
    write("1 - What does Dr. J. Leidig teach?\n"), nl,
    findall(X, answer_one("Dr. J. Leidig", X), _), nl,

    write("Does Dr. J. Leidig teach Database?\n"), nl,
    answer_two("Dr. J. Leidig"),nl,

    write("3 - What is Dr. J. Leidig's schedule?\n"), nl,
    findall(X, answer_three("Dr. J. Leidig", X, _, _, _, _), _), nl,

    write("4 - Who teaches what on Tuesday and Thursday at 10AM?\n"), nl,
    findall(X, answer_four('TR', '10:00AM'), _), nl,

    write("5 - When do Dr. J. Leidig and Dr. El-Said teach at the same time?\n"), nl,
    answer_five("Dr. El-Said", "Dr. J. Leidig"), nl.

?- print_answers.
