. tab education 
. generate Adv_Deg = 0
. replace Adv_Deg = 1 if education>=14
. tab Climate_Change
. replace Climate_Change = . if Climate_Change <=-8
. tab Climate_Change
. tabulate Climate_Change Adv_Deg
. tabulate Climate_Change Adv_Deg, column
. tabulate Climate_Change Adv_Deg, chi2 column
. tab gender
. tab V162096
. replace V162096 = . if V162096<0
. replace V162096 = . if V162096>100
. ttest V162096, by(gender)
. tab attend_church
. replace attend_church = . if attend_church<0
. tab death_penalty 
. replace death_penalty = . if death_penalty<0
. tabulate death_penalty attend_church, chi2 column
. tab race
. generate White = .
. replace White = 1 if race==1
. replace White = 2 if race>=2
. ttest build_wall, by(White)
. graph bar (mean) build_wall, over(White)
. graph bar (mean) build_wall, over(White) ytitle(Mean on Border Wall Opinion)
. graph bar (mean) V162096, over(gender) ytitle(Mean on Feminist Thermometer)
. graph bar, over(Climate_Change) ytitle(Views on Causes of Climate Change) by(Adv_Deg)
. graph bar, over(death_penalty) ytitle(Views on Causes of Climate Change) by(, title(Views on Death Penalty)) by(attend_church)
