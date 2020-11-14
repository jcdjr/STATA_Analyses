. import excel "/Users/18285/Desktop/Political Science 434 Class Survey.xlsx", sheet("Sheet") first row
(35 vars, 385 obs)
. rename (Whatisyourgender) (Gender)
. rename (Whichraceethnicitybestdescri) (Race)
. rename (L) (Other)
. rename (Whatisyourage) (Age)
. rename (Whatisthehighestlevelofsch) (Education)
. rename (Haveyoueverservedinanybran) (Military_Service)
. rename (Howoftendoyouwatchprofessio) (Sports_Watching)
. rename (Generallyspeakingdoyouthink) (Political_Affiliation)
. rename (Generallyspeakinghowwouldde) (Political_Ideology)
. rename (Howdoyoufeelaboutprofession) (Sports_Politics_Opinion)
. rename (Doyoufeelthatplayerskneelin) (Kneeling_Opinion)
. rename (Haveyoueverparticipatedina) (Protest_Participation)
. rename (Doyouagreewiththefollowing) (Blacks_Would_Be)
. rename (W) (White_People_Have)
. rename (Pleaselisttheprimarymediaso) (Media_Sources)
. replace Age = "." if Age=="I don't identify with a particular age"
. replace Age = "." if Age=="Time is a flat circle"
. replace Age = "." if Age=="Q"
. replace Age = "21" if Age=="Twenty one"
. destring Age, replace
Age: all characters numeric; replaced as byte
(4 missing values generated)
. drop RespondentID CollectorID StartDate EndDate IPAddress EmailAddress FirstName LastName CustomData1
. generate PID_ID = Political_Affiliation+Political_Ideology
(1 missing value generated)
. order Political_Affiliation Political_Ideology PID_ID
