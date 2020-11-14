. tab V162113
. replace V162113 = . if V162113<0
. replace V162113 = . if V162113>100
. tab race
. replace race = . if race<1
. regress V162113 i.race
. tab education 
. tab income 
. tab state
. generate region = 0
. order state region 
. replace region = 2 if state==1
. replace region = 5 if state==2
. replace region = 4 if state==4
. replace region = 2 if state==5
. replace region = 5 if state==6
. replace region = 5 if state==8
. replace region = 1 if state==10
. replace region = 1 if state==11
. replace region = 2 if state==12
. replace region = 2 if state==13
. replace region = 5 if state==15
. replace region = 5 if state==16
. replace region = 3 if state==17
. replace region = 3 if state==18
. replace region = 3 if state==19
. replace region = 3 if state==20
. replace region = 2 if state==21
. replace region = 2 if state==22
. replace region = 1 if state==24
. replace region = 3 if state==26
. replace region = 3 if state==27
. replace region = 2 if state==28
. replace region = 3 if state==29
. replace region = 5 if state==30
. replace region = 3 if state==31
. replace region = 5 if state==32
. replace region = 1 if state==34
. replace region = 4 if state==35
. replace region = 1 if state==36
. replace region = 2 if state==37
. replace region = 3 if state==38
. replace region = 3 if state==39
. replace region = 4 if state==40
. replace region = 5 if state==41
. replace region = 1 if state==42
. replace region = 2 if state==45
. replace region = 3 if state==46
. replace region = 2 if state==47
. replace region = 4 if state==48
. replace region = 5 if state==49
. replace region = 2 if state==51
. replace region = 5 if state==53
. replace region = 2 if state==54
. replace region = 3 if state==55
. replace region = 5 if state==56
. regress V162113 i.race education income  i.gender i.region
. tab V162097
. regress V162113 i.race education income  i.gender i.region V162097
. tab age
. tab V161232
. replace V161232 = . if V161232<1
. replace V161232 = . if V161232>4
. generate age_under_over = 0
. replace age_under_over = 0 if age<50
. replace age_under_over = 1 if age>=50
. tabulate V161232 age_under_over, chi2 column
. tab V161155
. replace V161155 = . if  V161155<1
. replace V161155 = . if  V161155>2
. tab V161087
. replace V161087 = . if  V161087<0
. ttest V161087, by(V161155)
