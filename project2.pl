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
professor(engelsma).
professor(lange).
professor(p_leidig).
professor(kalafut).
professor(wolffe).
professor(kurmas).
professor(schymik).
professor(peterman).
professor(el-said).
professor(scripps).
professor(j_leidig).
professor(trefftz).
professor(alsabbagh).
professor(jorgensen).
professor(nandigam).
professor(posada).
professor(du).

/**
* Define the students.
*/
student(jim).
student(pam).
student(kara_thrace).
student(gaius_baltar).

/**
* Define the class names.
*/
class_name(467, 'CS Project').
class_name(463, 'IS Project').
class_name(460, 'MIS').
class_name(457, 'Data Communications').
class_name(452, 'OS Concepts').
class_name(451, 'Computer Architecture').
class_name(450, 'IS Project Management').
class_name(443, 'Software Dev Tools').
class_name(437, 'Dist. Computing').
class_name(375, 'Wireless Networking Systems').
class_name(371, 'Web App Programming').
class_name(365, 'AI').
class_name(361, 'System Programming').
class_name(358, 'Info Insurance').
class_name(353, 'Database').
class_name(350, 'Software Engineering').
class_name(343, 'Struct. of Programming Languages').
class_name(339, 'IT Project Management').
class_name(337, 'Network Systems Management').
class_name(333, 'DB Management and Implementation').
class_name(330, 'System Analysis and Design').
class_name(661, 'Medical and BioInformatics').
class_name(671, 'Info Visualization').
class_name(691, 'MBI Capstone').

/**
* Define class times and locations.
*/
class_details(467, '10:00AM - 10:50AM', 'MWF', 'MAK-B-1-118').
class_details(463, '2:00PM - 2:50PM', 'MWF', 'MAK-D-2-123').
class_details(460, '10:00AM - 11:15AM', 'TR', 'MAK-B-1-116').
class_details(457, '2:00PM - 2:50PM', 'MWF', 'MAK-D-1-117').
class_details(452, '1:00PM - 1:50PM', 'MWF', 'MAK-D-1-117').
class_details(451, '10:00AM - 10:50AM', 'MWF', 'MAK-B-1-118').
class_details(450, '12:00PM - 12:50PM', 'MWF', 'MAK-D-1-117').
class_details(443, '11:00AM - 11:50AM', 'MWF', 'MAK-B-1-124').
class_details(437, '10:00AM - 10:50AM', 'MWF', 'MAK-B-1-118').
class_details(375, '6:00PM - 7:50PM', 'R', 'EC 612').
class_details(371, '4:00PM - 5:15PM', 'TR', 'MAK-D-1-117').
class_details(365, '10:00AM - 11:15AM', 'TR', 'MAK-D-1-117').
class_details(361, '4:00PM - 5:15PM', 'MW', 'MAK-B-1-116').
class_details(358, '3:00PM - 3:50PM', 'MWF', 'MAK-A-1-105').
class_details(353, '12:00PM - 12:50PM', 'MWF', 'MAK-B-1-118').
class_details(350, '10:00AM - 10:50AM', 'MWF', 'MAK-D-1-117').
class_details(343, '1:00PM - 1:50PM', 'MWF', 'MAK-B-1-124').
class_details(339, '1:00PM - 2:15PM', 'TR', 'MAK-A-1-105').
class_details(337, '3:00PM - 3:50PM', 'TR', 'MAK-B-1-124').
class_details(333, '6:00PM - 8:50PM', 'W', 'MAK-D-1-117').
class_details(330, '9:00AM - 9:50AM', 'MWF', 'MAK-D-1-117').
class_details(661, '6:00PM - 8:50PM', 'T', 'EC 612').
class_details(671, '6:00PM - 8:50PM', 'R', 'EC 612').
class_details(691, '6:00PM - 8:50PM', 'M', 'EC 612').

/**
* Define the classes each professor teaches.
*/
teaches(engelsma, 467).
teaches(lange, 463).
teaches(p_leidig, 460).
teaches(kalafut, 457).
teaches(wolffe, 452).
teaches(kurmas, 451).
teaches(schymik, 450).
teaches(peterman, 443).
teaches(engelsma, 437).
teaches(el-said, 375).
teaches(scripps, 371).
teaches(j_leidig, 365).
teaches(trefftz, 361).
teaches(kalafut, 358).
teaches(alsabbagh, 353).
teaches(jorgensen, 350).
teaches(nandigam, 343).
teaches(lange, 339).
teaches(el-said, 337).
teaches(posada, 333).
teaches(du, 330).
teaches(j_leidig, 661).
teaches(j_leidig, 671).
teaches(j_leidig, 691).

/**
* Define the classes each student is taking.
*/
taking(jim, 467).
taking(jim, 452).
taking(jim, 457).
taking(pam, 437).
taking(pam, 457).
taking(pam, 452).
taking(kara_thrace, 467).
taking(kara_thrace, 452).
taking(kara_thrace, 365).
taking(gaius_baltar, 463).
taking(gaius_baltar, 460).
taking(gaius_baltar, 375).
