INSERT INTO book_catalog (barcode, title, author, isbn, publisher, shelf_location, total_copies, available_copies)
SELECT * FROM (
    SELECT '9785656207461' AS barcode, 'Advanced Operating Systems' AS title, 'Unknown Author' AS author, '9785656207461' AS isbn, 'Operating Systems Publications' AS publisher, 'OS-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783328286592' AS barcode, 'Fundamentals of Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9783328286592' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783666219733' AS barcode, 'Advanced Theory of Computation' AS title, 'Unknown Author' AS author, '9783666219733' AS isbn, 'Theory of Computation Publications' AS publisher, 'TOC-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783437310317' AS barcode, 'Modern Engineering Chemistry' AS title, 'Unknown Author' AS author, '9783437310317' AS isbn, 'Engineering Chemistry Publications' AS publisher, 'EC-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780079519788' AS barcode, 'Introduction to Digital Logic Design' AS title, 'Unknown Author' AS author, '9780079519788' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788017337227' AS barcode, 'Advanced Big Data Analytics' AS title, 'Unknown Author' AS author, '9788017337227' AS isbn, 'Big Data Analytics Publications' AS publisher, 'BDA-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781320495738' AS barcode, 'Concepts of Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9781320495738' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785257779107' AS barcode, 'Essentials of Management Science' AS title, 'Unknown Author' AS author, '9785257779107' AS isbn, 'Management Science Publications' AS publisher, 'MS-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787429178121' AS barcode, 'Modern Problem Solving through Programming' AS title, 'Unknown Author' AS author, '9787429178121' AS isbn, 'Problem Solving through Programming Publications' AS publisher, 'PSTP-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789092224488' AS barcode, 'Principles of Computer Networks' AS title, 'Unknown Author' AS author, '9789092224488' AS isbn, 'Computer Networks Publications' AS publisher, 'CN-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781433841231' AS barcode, 'Concepts of Technical English Communication' AS title, 'Unknown Author' AS author, '9781433841231' AS isbn, 'Technical English Communication Publications' AS publisher, 'TEC-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789290660385' AS barcode, 'Practical Digital Logic Design' AS title, 'Unknown Author' AS author, '9789290660385' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785584611057' AS barcode, 'Principles of Digital Logic Design' AS title, 'Unknown Author' AS author, '9785584611057' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783912881028' AS barcode, 'Modern Management Science' AS title, 'Unknown Author' AS author, '9783912881028' AS isbn, 'Management Science Publications' AS publisher, 'MS-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782375762554' AS barcode, 'Principles of Linear Algebra and Ordinary Differential Equations' AS title, 'Unknown Author' AS author, '9782375762554' AS isbn, 'Linear Algebra and Ordinary Differential Equations Publications' AS publisher, 'LAAO-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782474544907' AS barcode, 'Modern Engineering Chemistry' AS title, 'Unknown Author' AS author, '9782474544907' AS isbn, 'Engineering Chemistry Publications' AS publisher, 'EC-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786333037609' AS barcode, 'Introduction to Data Structures' AS title, 'Unknown Author' AS author, '9786333037609' AS isbn, 'Data Structures Publications' AS publisher, 'DS-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787866868883' AS barcode, 'Practical Cryptography and Network Security' AS title, 'Unknown Author' AS author, '9787866868883' AS isbn, 'Cryptography and Network Security Publications' AS publisher, 'CANS-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781398110762' AS barcode, 'Fundamentals of Data Structures' AS title, 'Unknown Author' AS author, '9781398110762' AS isbn, 'Data Structures Publications' AS publisher, 'DS-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786664538738' AS barcode, 'Handbook of Management Science' AS title, 'Unknown Author' AS author, '9786664538738' AS isbn, 'Management Science Publications' AS publisher, 'MS-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781860602696' AS barcode, 'Comprehensive Guide to Operating Systems' AS title, 'Unknown Author' AS author, '9781860602696' AS isbn, 'Operating Systems Publications' AS publisher, 'OS-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786449252651' AS barcode, 'Concepts of Numerical Methods' AS title, 'Unknown Author' AS author, '9786449252651' AS isbn, 'Numerical Methods Publications' AS publisher, 'NM-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786987703738' AS barcode, 'Introduction to Constitution of India' AS title, 'Unknown Author' AS author, '9786987703738' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784028453208' AS barcode, 'Handbook of Problem Solving through Programming' AS title, 'Unknown Author' AS author, '9784028453208' AS isbn, 'Problem Solving through Programming Publications' AS publisher, 'PSTP-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788832833539' AS barcode, 'Essentials of Digital Logic Design' AS title, 'Unknown Author' AS author, '9788832833539' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780499173836' AS barcode, 'Practical Web Technologies' AS title, 'Unknown Author' AS author, '9780499173836' AS isbn, 'Web Technologies Publications' AS publisher, 'WT-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782095528577' AS barcode, 'Handbook of Cloud Computing' AS title, 'Unknown Author' AS author, '9782095528577' AS isbn, 'Cloud Computing Publications' AS publisher, 'CC-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783167370933' AS barcode, 'Advanced Operating Systems' AS title, 'Unknown Author' AS author, '9783167370933' AS isbn, 'Operating Systems Publications' AS publisher, 'OS-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783845403588' AS barcode, 'Essentials of Digital Logic Design' AS title, 'Unknown Author' AS author, '9783845403588' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783632998860' AS barcode, 'Introduction to Web Technologies' AS title, 'Unknown Author' AS author, '9783632998860' AS isbn, 'Web Technologies Publications' AS publisher, 'WT-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788310298409' AS barcode, 'Practical Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9788310298409' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781962673273' AS barcode, 'Fundamentals of Constitution of India' AS title, 'Unknown Author' AS author, '9781962673273' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785961339758' AS barcode, 'Comprehensive Guide to Design and Analysis of Algorithms' AS title, 'Unknown Author' AS author, '9785961339758' AS isbn, 'Design and Analysis of Algorithms Publications' AS publisher, 'DAAO-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789164353412' AS barcode, 'Essentials of Engineering Chemistry' AS title, 'Unknown Author' AS author, '9789164353412' AS isbn, 'Engineering Chemistry Publications' AS publisher, 'EC-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784316786124' AS barcode, 'Essentials of Probability and Statistics' AS title, 'Unknown Author' AS author, '9784316786124' AS isbn, 'Probability and Statistics Publications' AS publisher, 'PAS-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787772948679' AS barcode, 'Practical Compiler Design' AS title, 'Unknown Author' AS author, '9787772948679' AS isbn, 'Compiler Design Publications' AS publisher, 'CD-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786048518677' AS barcode, 'Modern Compiler Design' AS title, 'Unknown Author' AS author, '9786048518677' AS isbn, 'Compiler Design Publications' AS publisher, 'CD-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788077273343' AS barcode, 'Introduction to Probability and Statistics' AS title, 'Unknown Author' AS author, '9788077273343' AS isbn, 'Probability and Statistics Publications' AS publisher, 'PAS-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788285522738' AS barcode, 'Introduction to Constitution of India' AS title, 'Unknown Author' AS author, '9788285522738' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788318289690' AS barcode, 'Modern Technical English Communication' AS title, 'Unknown Author' AS author, '9788318289690' AS isbn, 'Technical English Communication Publications' AS publisher, 'TEC-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789538701351' AS barcode, 'Essentials of Engineering Graphics' AS title, 'Unknown Author' AS author, '9789538701351' AS isbn, 'Engineering Graphics Publications' AS publisher, 'EG-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788143892522' AS barcode, 'Advanced Big Data Analytics' AS title, 'Unknown Author' AS author, '9788143892522' AS isbn, 'Big Data Analytics Publications' AS publisher, 'BDA-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785055313190' AS barcode, 'Fundamentals of Constitution of India' AS title, 'Unknown Author' AS author, '9785055313190' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783353525253' AS barcode, 'Modern Artificial Intelligence' AS title, 'Unknown Author' AS author, '9783353525253' AS isbn, 'Artificial Intelligence Publications' AS publisher, 'AI-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780331701517' AS barcode, 'Concepts of Data Mining' AS title, 'Unknown Author' AS author, '9780331701517' AS isbn, 'Data Mining Publications' AS publisher, 'DM-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782568620265' AS barcode, 'Handbook of Cryptography and Network Security' AS title, 'Unknown Author' AS author, '9782568620265' AS isbn, 'Cryptography and Network Security Publications' AS publisher, 'CANS-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783312388011' AS barcode, 'Essentials of Technical English Communication' AS title, 'Unknown Author' AS author, '9783312388011' AS isbn, 'Technical English Communication Publications' AS publisher, 'TEC-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781104677978' AS barcode, 'Fundamentals of Algebra' AS title, 'Unknown Author' AS author, '9781104677978' AS isbn, 'Algebra Publications' AS publisher, 'A-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782989816469' AS barcode, 'Advanced Cloud Computing' AS title, 'Unknown Author' AS author, '9782989816469' AS isbn, 'Cloud Computing Publications' AS publisher, 'CC-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780448652184' AS barcode, 'Introduction to Big Data Analytics' AS title, 'Unknown Author' AS author, '9780448652184' AS isbn, 'Big Data Analytics Publications' AS publisher, 'BDA-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780562139141' AS barcode, 'Practical Problem Solving through Programming' AS title, 'Unknown Author' AS author, '9780562139141' AS isbn, 'Problem Solving through Programming Publications' AS publisher, 'PSTP-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789663771335' AS barcode, 'Principles of Design and Analysis of Algorithms' AS title, 'Unknown Author' AS author, '9789663771335' AS isbn, 'Design and Analysis of Algorithms Publications' AS publisher, 'DAAO-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786356703345' AS barcode, 'Principles of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9786356703345' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782672338186' AS barcode, 'Practical Data Mining' AS title, 'Unknown Author' AS author, '9782672338186' AS isbn, 'Data Mining Publications' AS publisher, 'DM-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781917309288' AS barcode, 'Advanced Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9781917309288' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788075120793' AS barcode, 'Comprehensive Guide to Constitution of India' AS title, 'Unknown Author' AS author, '9788075120793' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781061039079' AS barcode, 'Comprehensive Guide to Cloud Computing' AS title, 'Unknown Author' AS author, '9781061039079' AS isbn, 'Cloud Computing Publications' AS publisher, 'CC-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786489333303' AS barcode, 'Essentials of Basics of Electrical and Electronics Engineering' AS title, 'Unknown Author' AS author, '9786489333303' AS isbn, 'Basics of Electrical and Electronics Engineering Publications' AS publisher, 'BOEA-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788804945550' AS barcode, 'Modern Data Structures' AS title, 'Unknown Author' AS author, '9788804945550' AS isbn, 'Data Structures Publications' AS publisher, 'DS-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781205237934' AS barcode, 'Advanced Numerical Methods' AS title, 'Unknown Author' AS author, '9781205237934' AS isbn, 'Numerical Methods Publications' AS publisher, 'NM-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788375410495' AS barcode, 'Principles of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9788375410495' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782841379507' AS barcode, 'Principles of Environmental Studies' AS title, 'Unknown Author' AS author, '9782841379507' AS isbn, 'Environmental Studies Publications' AS publisher, 'ES-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780619539252' AS barcode, 'Concepts of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9780619539252' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789362609670' AS barcode, 'Essentials of Probability and Statistics' AS title, 'Unknown Author' AS author, '9789362609670' AS isbn, 'Probability and Statistics Publications' AS publisher, 'PAS-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785346694908' AS barcode, 'Handbook of Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9785346694908' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789379909503' AS barcode, 'Concepts of Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9789379909503' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787232055008' AS barcode, 'Modern Engineering Chemistry' AS title, 'Unknown Author' AS author, '9787232055008' AS isbn, 'Engineering Chemistry Publications' AS publisher, 'EC-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787543736238' AS barcode, 'Modern Big Data Analytics' AS title, 'Unknown Author' AS author, '9787543736238' AS isbn, 'Big Data Analytics Publications' AS publisher, 'BDA-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782352218036' AS barcode, 'Practical Theory of Computation' AS title, 'Unknown Author' AS author, '9782352218036' AS isbn, 'Theory of Computation Publications' AS publisher, 'TOC-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781997677345' AS barcode, 'Fundamentals of Compiler Design' AS title, 'Unknown Author' AS author, '9781997677345' AS isbn, 'Compiler Design Publications' AS publisher, 'CD-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782608799654' AS barcode, 'Comprehensive Guide to Database Management Systems' AS title, 'Unknown Author' AS author, '9782608799654' AS isbn, 'Database Management Systems Publications' AS publisher, 'DMS-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782994581239' AS barcode, 'Principles of Data Structures' AS title, 'Unknown Author' AS author, '9782994581239' AS isbn, 'Data Structures Publications' AS publisher, 'DS-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785473300444' AS barcode, 'Concepts of Artificial Intelligence' AS title, 'Unknown Author' AS author, '9785473300444' AS isbn, 'Artificial Intelligence Publications' AS publisher, 'AI-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788796007427' AS barcode, 'Introduction to Compiler Design' AS title, 'Unknown Author' AS author, '9788796007427' AS isbn, 'Compiler Design Publications' AS publisher, 'CD-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788981856458' AS barcode, 'Modern Linear Algebra and Ordinary Differential Equations' AS title, 'Unknown Author' AS author, '9788981856458' AS isbn, 'Linear Algebra and Ordinary Differential Equations Publications' AS publisher, 'LAAO-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784287566879' AS barcode, 'Essentials of Technical English Communication' AS title, 'Unknown Author' AS author, '9784287566879' AS isbn, 'Technical English Communication Publications' AS publisher, 'TEC-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785262454525' AS barcode, 'Modern Artificial Intelligence' AS title, 'Unknown Author' AS author, '9785262454525' AS isbn, 'Artificial Intelligence Publications' AS publisher, 'AI-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787878137847' AS barcode, 'Principles of Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9787878137847' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785419094673' AS barcode, 'Principles of Computer Organization and Architecture' AS title, 'Unknown Author' AS author, '9785419094673' AS isbn, 'Computer Organization and Architecture Publications' AS publisher, 'COAA-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781191088886' AS barcode, 'Principles of Data Structures' AS title, 'Unknown Author' AS author, '9781191088886' AS isbn, 'Data Structures Publications' AS publisher, 'DS-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786537550591' AS barcode, 'Comprehensive Guide to Environmental Studies' AS title, 'Unknown Author' AS author, '9786537550591' AS isbn, 'Environmental Studies Publications' AS publisher, 'ES-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788218322374' AS barcode, 'Handbook of Software Engineering' AS title, 'Unknown Author' AS author, '9788218322374' AS isbn, 'Software Engineering Publications' AS publisher, 'SE-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787300905150' AS barcode, 'Practical Operating Systems' AS title, 'Unknown Author' AS author, '9787300905150' AS isbn, 'Operating Systems Publications' AS publisher, 'OS-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782677662187' AS barcode, 'Comprehensive Guide to Environmental Studies' AS title, 'Unknown Author' AS author, '9782677662187' AS isbn, 'Environmental Studies Publications' AS publisher, 'ES-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780876844854' AS barcode, 'Practical Problem Solving through Programming' AS title, 'Unknown Author' AS author, '9780876844854' AS isbn, 'Problem Solving through Programming Publications' AS publisher, 'PSTP-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788359225688' AS barcode, 'Principles of Digital Logic Design' AS title, 'Unknown Author' AS author, '9788359225688' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782482725756' AS barcode, 'Comprehensive Guide to Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9782482725756' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787904645025' AS barcode, 'Principles of Basics of Electrical and Electronics Engineering' AS title, 'Unknown Author' AS author, '9787904645025' AS isbn, 'Basics of Electrical and Electronics Engineering Publications' AS publisher, 'BOEA-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785805364786' AS barcode, 'Modern Engineering Graphics' AS title, 'Unknown Author' AS author, '9785805364786' AS isbn, 'Engineering Graphics Publications' AS publisher, 'EG-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781346786193' AS barcode, 'Advanced Database Management Systems' AS title, 'Unknown Author' AS author, '9781346786193' AS isbn, 'Database Management Systems Publications' AS publisher, 'DMS-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784782857137' AS barcode, 'Principles of Constitution of India' AS title, 'Unknown Author' AS author, '9784782857137' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781661141448' AS barcode, 'Principles of Engineering Graphics' AS title, 'Unknown Author' AS author, '9781661141448' AS isbn, 'Engineering Graphics Publications' AS publisher, 'EG-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787117326711' AS barcode, 'Fundamentals of Data Structures' AS title, 'Unknown Author' AS author, '9787117326711' AS isbn, 'Data Structures Publications' AS publisher, 'DS-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785303857155' AS barcode, 'Principles of Basics of Electrical and Electronics Engineering' AS title, 'Unknown Author' AS author, '9785303857155' AS isbn, 'Basics of Electrical and Electronics Engineering Publications' AS publisher, 'BOEA-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782300429484' AS barcode, 'Essentials of Engineering Graphics' AS title, 'Unknown Author' AS author, '9782300429484' AS isbn, 'Engineering Graphics Publications' AS publisher, 'EG-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784319569960' AS barcode, 'Advanced Problem Solving through Programming' AS title, 'Unknown Author' AS author, '9784319569960' AS isbn, 'Problem Solving through Programming Publications' AS publisher, 'PSTP-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783566687199' AS barcode, 'Introduction to Linear Algebra and Ordinary Differential Equations' AS title, 'Unknown Author' AS author, '9783566687199' AS isbn, 'Linear Algebra and Ordinary Differential Equations Publications' AS publisher, 'LAAO-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789087225094' AS barcode, 'Modern Algebra' AS title, 'Unknown Author' AS author, '9789087225094' AS isbn, 'Algebra Publications' AS publisher, 'A-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785947067941' AS barcode, 'Principles of Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9785947067941' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784566656352' AS barcode, 'Advanced Data Structures' AS title, 'Unknown Author' AS author, '9784566656352' AS isbn, 'Data Structures Publications' AS publisher, 'DS-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788019803416' AS barcode, 'Introduction to Probability and Statistics' AS title, 'Unknown Author' AS author, '9788019803416' AS isbn, 'Probability and Statistics Publications' AS publisher, 'PAS-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784047251441' AS barcode, 'Fundamentals of Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9784047251441' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788906146725' AS barcode, 'Handbook of Artificial Intelligence' AS title, 'Unknown Author' AS author, '9788906146725' AS isbn, 'Artificial Intelligence Publications' AS publisher, 'AI-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787110986868' AS barcode, 'Advanced Data Mining' AS title, 'Unknown Author' AS author, '9787110986868' AS isbn, 'Data Mining Publications' AS publisher, 'DM-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780666422958' AS barcode, 'Fundamentals of Computer Networks' AS title, 'Unknown Author' AS author, '9780666422958' AS isbn, 'Computer Networks Publications' AS publisher, 'CN-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783122906627' AS barcode, 'Advanced Design and Analysis of Algorithms' AS title, 'Unknown Author' AS author, '9783122906627' AS isbn, 'Design and Analysis of Algorithms Publications' AS publisher, 'DAAO-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786241766301' AS barcode, 'Concepts of Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9786241766301' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789962494157' AS barcode, 'Concepts of Computer Organization and Architecture' AS title, 'Unknown Author' AS author, '9789962494157' AS isbn, 'Computer Organization and Architecture Publications' AS publisher, 'COAA-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788353187562' AS barcode, 'Practical Linear Algebra and Ordinary Differential Equations' AS title, 'Unknown Author' AS author, '9788353187562' AS isbn, 'Linear Algebra and Ordinary Differential Equations Publications' AS publisher, 'LAAO-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785601763912' AS barcode, 'Practical Data Structures' AS title, 'Unknown Author' AS author, '9785601763912' AS isbn, 'Data Structures Publications' AS publisher, 'DS-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785787534535' AS barcode, 'Introduction to Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9785787534535' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787588164737' AS barcode, 'Fundamentals of Digital Logic Design' AS title, 'Unknown Author' AS author, '9787588164737' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780480153885' AS barcode, 'Concepts of Web Technologies' AS title, 'Unknown Author' AS author, '9780480153885' AS isbn, 'Web Technologies Publications' AS publisher, 'WT-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788126899159' AS barcode, 'Comprehensive Guide to Data Mining' AS title, 'Unknown Author' AS author, '9788126899159' AS isbn, 'Data Mining Publications' AS publisher, 'DM-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786500553963' AS barcode, 'Practical English Proficiency and Communication Skills' AS title, 'Unknown Author' AS author, '9786500553963' AS isbn, 'English Proficiency and Communication Skills Publications' AS publisher, 'EPAC-01' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784586729555' AS barcode, 'Advanced Design and Analysis of Algorithms' AS title, 'Unknown Author' AS author, '9784586729555' AS isbn, 'Design and Analysis of Algorithms Publications' AS publisher, 'DAAO-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784649965418' AS barcode, 'Fundamentals of Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9784649965418' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785997065706' AS barcode, 'Principles of Algebra' AS title, 'Unknown Author' AS author, '9785997065706' AS isbn, 'Algebra Publications' AS publisher, 'A-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788259841025' AS barcode, 'Introduction to Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9788259841025' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785672257440' AS barcode, 'Concepts of Cloud Computing' AS title, 'Unknown Author' AS author, '9785672257440' AS isbn, 'Cloud Computing Publications' AS publisher, 'CC-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789190207185' AS barcode, 'Practical Computer Networks' AS title, 'Unknown Author' AS author, '9789190207185' AS isbn, 'Computer Networks Publications' AS publisher, 'CN-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783756430642' AS barcode, 'Essentials of Computer Networks' AS title, 'Unknown Author' AS author, '9783756430642' AS isbn, 'Computer Networks Publications' AS publisher, 'CN-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780508384840' AS barcode, 'Modern Artificial Intelligence' AS title, 'Unknown Author' AS author, '9780508384840' AS isbn, 'Artificial Intelligence Publications' AS publisher, 'AI-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784238387690' AS barcode, 'Principles of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9784238387690' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788831549233' AS barcode, 'Introduction to Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9788831549233' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782447092312' AS barcode, 'Modern Constitution of India' AS title, 'Unknown Author' AS author, '9782447092312' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782732107684' AS barcode, 'Advanced Cloud Computing' AS title, 'Unknown Author' AS author, '9782732107684' AS isbn, 'Cloud Computing Publications' AS publisher, 'CC-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781890518318' AS barcode, 'Essentials of Numerical Methods' AS title, 'Unknown Author' AS author, '9781890518318' AS isbn, 'Numerical Methods Publications' AS publisher, 'NM-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788520859025' AS barcode, 'Handbook of Problem Solving through Programming' AS title, 'Unknown Author' AS author, '9788520859025' AS isbn, 'Problem Solving through Programming Publications' AS publisher, 'PSTP-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781943778218' AS barcode, 'Principles of Big Data Analytics' AS title, 'Unknown Author' AS author, '9781943778218' AS isbn, 'Big Data Analytics Publications' AS publisher, 'BDA-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780958055277' AS barcode, 'Advanced Theory of Computation' AS title, 'Unknown Author' AS author, '9780958055277' AS isbn, 'Theory of Computation Publications' AS publisher, 'TOC-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784872077018' AS barcode, 'Comprehensive Guide to Design and Analysis of Algorithms' AS title, 'Unknown Author' AS author, '9784872077018' AS isbn, 'Design and Analysis of Algorithms Publications' AS publisher, 'DAAO-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785056340676' AS barcode, 'Fundamentals of English Proficiency and Communication Skills' AS title, 'Unknown Author' AS author, '9785056340676' AS isbn, 'English Proficiency and Communication Skills Publications' AS publisher, 'EPAC-02' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785545635979' AS barcode, 'Concepts of Digital Logic Design' AS title, 'Unknown Author' AS author, '9785545635979' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788969066756' AS barcode, 'Modern Artificial Intelligence' AS title, 'Unknown Author' AS author, '9788969066756' AS isbn, 'Artificial Intelligence Publications' AS publisher, 'AI-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786233339209' AS barcode, 'Concepts of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9786233339209' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784046654571' AS barcode, 'Essentials of Problem Solving through Programming' AS title, 'Unknown Author' AS author, '9784046654571' AS isbn, 'Problem Solving through Programming Publications' AS publisher, 'PSTP-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787701393624' AS barcode, 'Principles of Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9787701393624' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787189436264' AS barcode, 'Handbook of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9787189436264' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782907798938' AS barcode, 'Modern Constitution of India' AS title, 'Unknown Author' AS author, '9782907798938' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783718781478' AS barcode, 'Practical Cloud Computing' AS title, 'Unknown Author' AS author, '9783718781478' AS isbn, 'Cloud Computing Publications' AS publisher, 'CC-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785254251781' AS barcode, 'Concepts of Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9785254251781' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785319466310' AS barcode, 'Modern Operating Systems' AS title, 'Unknown Author' AS author, '9785319466310' AS isbn, 'Operating Systems Publications' AS publisher, 'OS-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780241987957' AS barcode, 'Modern Management Science' AS title, 'Unknown Author' AS author, '9780241987957' AS isbn, 'Management Science Publications' AS publisher, 'MS-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785276895482' AS barcode, 'Handbook of Algebra' AS title, 'Unknown Author' AS author, '9785276895482' AS isbn, 'Algebra Publications' AS publisher, 'A-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789217992391' AS barcode, 'Principles of Data Structures' AS title, 'Unknown Author' AS author, '9789217992391' AS isbn, 'Data Structures Publications' AS publisher, 'DS-09' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781064728734' AS barcode, 'Modern Data Mining' AS title, 'Unknown Author' AS author, '9781064728734' AS isbn, 'Data Mining Publications' AS publisher, 'DM-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785869761569' AS barcode, 'Concepts of Management Science' AS title, 'Unknown Author' AS author, '9785869761569' AS isbn, 'Management Science Publications' AS publisher, 'MS-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788414047163' AS barcode, 'Introduction to Computer Networks' AS title, 'Unknown Author' AS author, '9788414047163' AS isbn, 'Computer Networks Publications' AS publisher, 'CN-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783949390531' AS barcode, 'Principles of Cloud Computing' AS title, 'Unknown Author' AS author, '9783949390531' AS isbn, 'Cloud Computing Publications' AS publisher, 'CC-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789267724706' AS barcode, 'Advanced Engineering Graphics' AS title, 'Unknown Author' AS author, '9789267724706' AS isbn, 'Engineering Graphics Publications' AS publisher, 'EG-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788423156900' AS barcode, 'Principles of Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9788423156900' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-09' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781646791637' AS barcode, 'Handbook of Management Science' AS title, 'Unknown Author' AS author, '9781646791637' AS isbn, 'Management Science Publications' AS publisher, 'MS-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783051797587' AS barcode, 'Concepts of Computer Organization and Architecture' AS title, 'Unknown Author' AS author, '9783051797587' AS isbn, 'Computer Organization and Architecture Publications' AS publisher, 'COAA-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787841312264' AS barcode, 'Advanced Engineering Graphics' AS title, 'Unknown Author' AS author, '9787841312264' AS isbn, 'Engineering Graphics Publications' AS publisher, 'EG-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788025615867' AS barcode, 'Handbook of Digital Logic Design' AS title, 'Unknown Author' AS author, '9788025615867' AS isbn, 'Digital Logic Design Publications' AS publisher, 'DLD-09' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786637723468' AS barcode, 'Comprehensive Guide to Operating Systems' AS title, 'Unknown Author' AS author, '9786637723468' AS isbn, 'Operating Systems Publications' AS publisher, 'OS-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785638838874' AS barcode, 'Introduction to Constitution of India' AS title, 'Unknown Author' AS author, '9785638838874' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-09' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789145442999' AS barcode, 'Concepts of Data Mining' AS title, 'Unknown Author' AS author, '9789145442999' AS isbn, 'Data Mining Publications' AS publisher, 'DM-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789822202663' AS barcode, 'Modern Engineering Graphics' AS title, 'Unknown Author' AS author, '9789822202663' AS isbn, 'Engineering Graphics Publications' AS publisher, 'EG-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785460213634' AS barcode, 'Concepts of English Proficiency and Communication Skills' AS title, 'Unknown Author' AS author, '9785460213634' AS isbn, 'English Proficiency and Communication Skills Publications' AS publisher, 'EPAC-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789134657861' AS barcode, 'Essentials of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9789134657861' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782311079722' AS barcode, 'Advanced Numerical Methods' AS title, 'Unknown Author' AS author, '9782311079722' AS isbn, 'Numerical Methods Publications' AS publisher, 'NM-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783971889621' AS barcode, 'Principles of Computer Networks' AS title, 'Unknown Author' AS author, '9783971889621' AS isbn, 'Computer Networks Publications' AS publisher, 'CN-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784460408668' AS barcode, 'Advanced Technical English Communication' AS title, 'Unknown Author' AS author, '9784460408668' AS isbn, 'Technical English Communication Publications' AS publisher, 'TEC-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786315299643' AS barcode, 'Essentials of Probability and Statistics' AS title, 'Unknown Author' AS author, '9786315299643' AS isbn, 'Probability and Statistics Publications' AS publisher, 'PAS-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788640099226' AS barcode, 'Modern Data Structures' AS title, 'Unknown Author' AS author, '9788640099226' AS isbn, 'Data Structures Publications' AS publisher, 'DS-10' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788396061362' AS barcode, 'Principles of Probability and Statistics' AS title, 'Unknown Author' AS author, '9788396061362' AS isbn, 'Probability and Statistics Publications' AS publisher, 'PAS-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781674251738' AS barcode, 'Practical Engineering Chemistry' AS title, 'Unknown Author' AS author, '9781674251738' AS isbn, 'Engineering Chemistry Publications' AS publisher, 'EC-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787090403034' AS barcode, 'Modern Probability and Statistics' AS title, 'Unknown Author' AS author, '9787090403034' AS isbn, 'Probability and Statistics Publications' AS publisher, 'PAS-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783362512893' AS barcode, 'Handbook of Computer Organization and Architecture' AS title, 'Unknown Author' AS author, '9783362512893' AS isbn, 'Computer Organization and Architecture Publications' AS publisher, 'COAA-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783228398616' AS barcode, 'Principles of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9783228398616' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-09' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782032667284' AS barcode, 'Advanced Numerical Methods' AS title, 'Unknown Author' AS author, '9782032667284' AS isbn, 'Numerical Methods Publications' AS publisher, 'NM-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788458281431' AS barcode, 'Essentials of Database Management Systems' AS title, 'Unknown Author' AS author, '9788458281431' AS isbn, 'Database Management Systems Publications' AS publisher, 'DMS-03' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785489144629' AS barcode, 'Introduction to Web Technologies' AS title, 'Unknown Author' AS author, '9785489144629' AS isbn, 'Web Technologies Publications' AS publisher, 'WT-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781493178124' AS barcode, 'Principles of Problem Solving through Programming' AS title, 'Unknown Author' AS author, '9781493178124' AS isbn, 'Problem Solving through Programming Publications' AS publisher, 'PSTP-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785689943008' AS barcode, 'Fundamentals of Discrete Mathematical Structures' AS title, 'Unknown Author' AS author, '9785689943008' AS isbn, 'Discrete Mathematical Structures Publications' AS publisher, 'DMS-09' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780500029381' AS barcode, 'Comprehensive Guide to Operating Systems' AS title, 'Unknown Author' AS author, '9780500029381' AS isbn, 'Operating Systems Publications' AS publisher, 'OS-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9780014105632' AS barcode, 'Comprehensive Guide to Data Structures' AS title, 'Unknown Author' AS author, '9780014105632' AS isbn, 'Data Structures Publications' AS publisher, 'DS-11' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785430862220' AS barcode, 'Concepts of Cloud Computing' AS title, 'Unknown Author' AS author, '9785430862220' AS isbn, 'Cloud Computing Publications' AS publisher, 'CC-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785984794817' AS barcode, 'Comprehensive Guide to Probability and Statistics' AS title, 'Unknown Author' AS author, '9785984794817' AS isbn, 'Probability and Statistics Publications' AS publisher, 'PAS-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783477596399' AS barcode, 'Comprehensive Guide to Environmental Studies' AS title, 'Unknown Author' AS author, '9783477596399' AS isbn, 'Environmental Studies Publications' AS publisher, 'ES-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788591477319' AS barcode, 'Introduction to Algebra' AS title, 'Unknown Author' AS author, '9788591477319' AS isbn, 'Algebra Publications' AS publisher, 'A-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782060884448' AS barcode, 'Comprehensive Guide to Computer Organization and Architecture' AS title, 'Unknown Author' AS author, '9782060884448' AS isbn, 'Computer Organization and Architecture Publications' AS publisher, 'COAA-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9781643307213' AS barcode, 'Principles of Engineering Graphics' AS title, 'Unknown Author' AS author, '9781643307213' AS isbn, 'Engineering Graphics Publications' AS publisher, 'EG-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9787396166787' AS barcode, 'Principles of Database Management Systems' AS title, 'Unknown Author' AS author, '9787396166787' AS isbn, 'Database Management Systems Publications' AS publisher, 'DMS-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783257456622' AS barcode, 'Principles of Object-Oriented Programming through Java' AS title, 'Unknown Author' AS author, '9783257456622' AS isbn, 'Object-Oriented Programming through Java Publications' AS publisher, 'OOPT-10' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783596051113' AS barcode, 'Handbook of Data Mining' AS title, 'Unknown Author' AS author, '9783596051113' AS isbn, 'Data Mining Publications' AS publisher, 'DM-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9788568872178' AS barcode, 'Essentials of Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9788568872178' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-10' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784631712297' AS barcode, 'Principles of Constitution of India' AS title, 'Unknown Author' AS author, '9784631712297' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-10' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789003696816' AS barcode, 'Fundamentals of Numerical Methods' AS title, 'Unknown Author' AS author, '9789003696816' AS isbn, 'Numerical Methods Publications' AS publisher, 'NM-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9789844550414' AS barcode, 'Fundamentals of Computer Organization and Architecture' AS title, 'Unknown Author' AS author, '9789844550414' AS isbn, 'Computer Organization and Architecture Publications' AS publisher, 'COAA-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786156915801' AS barcode, 'Handbook of Design and Analysis of Algorithms' AS title, 'Unknown Author' AS author, '9786156915801' AS isbn, 'Design and Analysis of Algorithms Publications' AS publisher, 'DAAO-06' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785194097180' AS barcode, 'Principles of Numerical Methods' AS title, 'Unknown Author' AS author, '9785194097180' AS isbn, 'Numerical Methods Publications' AS publisher, 'NM-07' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9786594656366' AS barcode, 'Modern Semiconductor Physics and Electromagnetics' AS title, 'Unknown Author' AS author, '9786594656366' AS isbn, 'Semiconductor Physics and Electromagnetics Publications' AS publisher, 'SPAE-11' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785075140776' AS barcode, 'Advanced Constitution of India' AS title, 'Unknown Author' AS author, '9785075140776' AS isbn, 'Constitution of India Publications' AS publisher, 'COI-11' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9784402739249' AS barcode, 'Introduction to Web Technologies' AS title, 'Unknown Author' AS author, '9784402739249' AS isbn, 'Web Technologies Publications' AS publisher, 'WT-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9785919954552' AS barcode, 'Modern Numerical Methods' AS title, 'Unknown Author' AS author, '9785919954552' AS isbn, 'Numerical Methods Publications' AS publisher, 'NM-08' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9782674106981' AS barcode, 'Concepts of Database Management Systems' AS title, 'Unknown Author' AS author, '9782674106981' AS isbn, 'Database Management Systems Publications' AS publisher, 'DMS-05' AS shelf_location, 3 AS total_copies, 3 AS available_copies
    UNION ALL
    SELECT '9783601034216' AS barcode, 'Modern English Proficiency and Communication Skills' AS title, 'Unknown Author' AS author, '9783601034216' AS isbn, 'English Proficiency and Communication Skills Publications' AS publisher, 'EPAC-04' AS shelf_location, 3 AS total_copies, 3 AS available_copies
) AS seed_data
WHERE NOT EXISTS (
    SELECT 1 FROM book_catalog b WHERE b.barcode = seed_data.barcode
);

