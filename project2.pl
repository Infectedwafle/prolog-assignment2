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
* Define the professors and their departments.
*/
professor("Dr. Engelsma", "CS").
professor("Mr. Lange", "IS").
professor("Dr. P. Leidig", "IS").
professor("Dr. Kalafut", "CS").
professor("Dr. Wolffe", "CS").
professor("Dr. Kurmas", "CS").
professor("Dr. Schymik", "IS").
professor("Ms. Peterman", "IS").
professor("Dr. Engelsma", "CS").
professor("Dr. El-Said", "IS").
professor("Dr. Scripps", "CS").
professor("Dr. J. Leidig", "CS").
professor("Dr. Trefftz", "CS").
professor("Dr. Kalafut", "CS").
professor("Dr. Alsabbagh", "CS").
professor("Dr. Jorgensen", "CS").
professor("Dr. Nandigam", "CS").
professor("Mr. Lange", "IS").
professor("Dr. El-Said", "IS").
professor("Ms. Posada", "IS").
professor("Dr. Du", "IS").
professor("Dr. J. Leidig", "CIS").
professor("Dr. J. Leidig", "CIS").
professor("Dr. J. Leidig", "CIS").

/**
* Define class times and locations. The fact can be read like this:
*
* class_details(class number, start time, end time, days, location)
*/
class_details(467, "CS Project", "10:00AM", "10:50AM", "MWF", "MAK-B-1-118").
class_details(463, "IS Project", "2:00PM", "2:50PM", "MWF", "MAK-D-2-123").
class_details(460, "MIS", "10:00AM", "11:15AM", "TR", "MAK-B-1-116").
class_details(457, "Data Com", "2:00PM", "2:50PM", "MWF", "MAK-D-1-117").
class_details(452, "OS", "1:00PM", "1:50PM", "MWF", "MAK-D-1-117").
class_details(451, "Computer Architecture", "10:00AM", "10:50AM", "MWF", "MAK-B-1-118").
class_details(450, "IS Project Management", "12:00PM", "12:50PM", "MWF", "MAK-D-1-117").
class_details(443, "Software Dev Tools", "11:00AM", "11:50AM", "MWF", "MAK-B-1-124").
class_details(437, "Dist. Computing", "10:00AM", "10:50AM", "MWF", "MAK-B-1-118").
class_details(375, "Wireless Networking Systems", "6:00PM", "7:50PM", "R", "EC 612").
class_details(371, "Web Apps", "4:00PM", "5:15PM", "TR", "MAK-D-1-117").
class_details(365, "AI", "10:00AM", "11:15AM", "TR", "MAK-D-1-117").
class_details(361, "System Programming", "4:00PM", "5:15PM", "MW", "MAK-B-1-116").
class_details(358, "Information Assurance", "3:00PM", "3:50PM", "MWF", "MAK-A-1-105").
class_details(353, "DB", "12:00PM", "12:50PM", "MWF", "MAK-B-1-118").
class_details(350, "Software Engineering", "10:00AM", "10:50AM", "MWF", "MAK-D-1-117").
class_details(343, "Programming Languages", "1:00PM", "1:50PM", "MWF", "MAK-B-1-124").
class_details(339, "IT Project Management", "1:00PM", "2:15PM", "TR", "MAK-A-1-105").
class_details(337, "Network Systems Management", "3:00PM", "3:50PM", "TR", "MAK-B-1-124").
class_details(333, "DB Management and Implementation", "6:00PM", "8:50PM", "W", "MAK-D-1-117").
class_details(330, "Systems Analysis and Design", "9:00AM", "9:50AM", "MWF", "MAK-D-1-117").
class_details(661, "Medical and BioInformatics", "6:00PM", "8:50PM", "T", "EC 612").
class_details(671, "Info Visualization", "6:00PM", "8:50PM", "R", "EC 612").
class_details(691, "MBI Capstone", "6:00PM", "8:50PM", "M", "EC 612").

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
* Define the students.
*/
student("Jim").
student("Pam").
student("Kara Thrace").
student("Gaius Baltar").

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
    teaches(P, C), write("CIS "), write(C), nl.

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
*
* Inputs: (Prof, Class, Start, End, Days, Location)
* Description: Returns Professor's schedule.
**********************************************************************/
answer_three(P, _, S, E, D, L) :-
    teaches(P, X),
    class_details(X, N, S, E, D, L),
    write("Teaches CIS"), write(X),
    write(" ("), write(N), write(")"), write(" from "),
    write(S),write(" to "), write(E), write(" on "),
    write(D),write(" at "), write(L), nl.

/**********************************************************************
* 4) Who is scheduled to teach what subject on TTH, 10AM?
*
* Inputs: (Days, StartTime)
* Description: Returns who teaches what on Days at StartTime.
**********************************************************************/
answer_four(D, T) :-
    class_details(C, _, T, _, D, _), teaches(X, C), write(X), nl.

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
    class_details(I, _, T, _, _, _),
    class_details(J, _, T, _, _, _),
    write(T), nl.

/**********************************************************************
* 6) Who teaches at the same time as Dr. J. Leidig?
*
* Inputs: (Professor)
* Description: Returns professors who teach at the same times as
* Professor.
**********************************************************************/
answer_six(P) :-
    teaches(P, C),
    class_details(C, _, S, _, D, _),
    class_details(Y, _, S, _, D, _),
    teaches(Z, Y),
    \+ Z = P,
    write(Z), nl.

/**********************************************************************
* 7) What courses do Jim and Pam have in common?
*
* Inputs: (Student1, Student2)
* Description: Returns classes Student1 and Student2 have in common.
**********************************************************************/
answer_seven(X, Y) :-
    taking(X, C), taking(Y, C), write("CIS"), write(C), nl.

/**********************************************************************
* 8) Who is taking CS courses?
*
* Inputs: (Student)
* Description: Returns a list of students taking at least one CS class.
**********************************************************************/
answer_eight(S):-
    taking(S, C), teaches(P, C), professor(P, "CS").

/**********************************************************************
* 9) What types of courses is Gaius Baltar taking?
* department("Dr. J. Leidig", "CIS").
* teaches("Dr. J. Leidig", 691).
* taking("Gaius Baltar", 375).

* Inputs: (Student)
* Description: Returns the types of courses (CS/IS) that Student is
* currently taking.
**********************************************************************/
answer_nine(S) :-
    taking(S, C), teaches(P, C), professor(P, D), write(D), nl.

/**********************************************************************
* 10) Are there any scheduling conflicts of profs or locations?
*
* Inputs: (Professor)
* Description: Returns a list of professors/locations that have
* scheduling conflicts. That is, it builds a list of either:
*
*   1) Professors who teach a class at the same time in different locations
*   2) Classrooms that host more than one class at the same time
**********************************************************************/
answer_ten() :-
    professor_conflict(_) ; location_conflict(_) -> write(yes), nl ; write(no), nl.

/**********************************************************************
 * Determines whether or not a professor has a conflicting schedule.
 *
 * Inputs: ()
 **********************************************************************/
 professor_conflict(P) :-
     teaches(P, C),
     class_details(C, _, S, _, D, _),
     class_details(I, _, S, _, D, _),
     teaches(P, I) -> write(P), write(" has schedule conflict!"), nl.

/**********************************************************************
* Determines whether or not there is a scheduling conflict for a given
* classroom.
*
* Inputs: (Location)
**********************************************************************/
location_conflict(L) :-
    class_details(_, _, S, _, D, L),
    class_details(_, _, S, _, D, L) -> write(L), write(" has location conflict!"), nl.

/**
* Print answers to questions.
*/
print_answers :-
    write("1 - What does Dr. J. Leidig teach?\n"), nl,
    findall(X1, answer_one("Dr. J. Leidig", X1), _), nl,

    write("Does Dr. J. Leidig teach Database?\n"), nl,
    answer_two("Dr. J. Leidig"), nl,

    write("3 - What is Dr. J. Leidig's schedule?\n"), nl,
    findall(X3, answer_three("Dr. J. Leidig", X3, _, _, _, _), _), nl,

    write("4 - Who teaches what on Tuesday and Thursday at 10AM?\n"), nl,
    findall(_, answer_four("TR", "10:00AM"), _), nl,

    write("5 - When do Dr. J. Leidig and Dr. El-Said teach at the same time?\n"), nl,
    answer_five("Dr. El-Said", "Dr. J. Leidig"), nl,

    write("6 - Who teaches at the same time as Dr. J. Leidig? \n"), nl,
    findall(_, answer_six("Dr. J. Leidig"), _), nl,

    write("7 - What classes do Jim and Pam have in common?\n"), nl,
    findall(_, answer_seven("Jim", "Pam"), _), nl,

    /** TODO: How to stop square brackets from printing? */
    write("8 - Who is taking CS courses?\n"), nl,
    setof(X8, answer_eight(X8), Q8), write(Q8), nl,

    /** TODO: Don't print duplicates. */
    write("9 - What types of courses is Gaius Baltar taking?\n"), nl,
    setof(_, answer_nine("Gaius Baltar"), _), nl,

    write("10 - Are there any scheduling conflicts of profs or locations?\n"), nl,
    findall(_, answer_ten(), _), nl.
    
?- print_answers.
