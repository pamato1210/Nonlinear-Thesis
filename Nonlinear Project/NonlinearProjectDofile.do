clear
use "C:\Users\Peter\Desktop\nonlinear project\1996To1999BRFSSCLEANED.dta"
//graph twoway scatter TobaccoCPI usableobservationdate 
logit issmoker lncigaretteprice i.ethnicityblack i.ethnicityhispanic i.ageisbetween25and34 i.ageisbetween35and44 i.ageisbetween45and54 i.ageisbetween55and64 i.ageisover65 i.ismale i.issingle i.isdivorced i.iswidowed i.highschoolgraduate i.hastakensomecollegeclasses i.collegegraduate i.isunemployed i.incomebetween10kand20k i.incomebetween20kand35k i.incomeover35k i.isincomeunknown  i.isgenhlthgood i.isgenhlthfair i.isgenhlthpoor iyear, robust
eststo logitresults
esttab logitresults using logitresults.rtf, se replace
margins, dydx(*) post
eststo logitmarginsresults
esttab logitmarginsresults using logitmarginsresults.rtf, se replace
zinb smokenum lncigaretteprice i.ethnicityblack i.ethnicityhispanic i.ageisbetween25and34 i.ageisbetween35and44 i.ageisbetween45and54 i.ageisbetween55and64 i.ageisover65 i.ismale i.issingle i.isdivorced i.iswidowed i.highschoolgraduate i.hastakensomecollegeclasses i.collegegraduate i.isunemployed i.incomebetween10kand20k i.incomebetween20kand35k i.incomeover35k i.isincomeunknown  i.isgenhlthgood i.isgenhlthfair i.isgenhlthpoor i.iyear, inflate(issmoker) vuong zip
zinb smokenum lncigaretteprice i.ethnicityblack i.ethnicityhispanic i.ageisbetween25and34 i.ageisbetween35and44 i.ageisbetween45and54 i.ageisbetween55and64 i.ageisover65 i.ismale i.issingle i.isdivorced i.iswidowed i.highschoolgraduate i.hastakensomecollegeclasses i.collegegraduate i.isunemployed i.incomebetween10kand20k i.incomebetween20kand35k i.incomeover35k i.isincomeunknown  i.isgenhlthgood i.isgenhlthfair i.isgenhlthpoor i.iyear, inflate(issmoker) robust
eststo zinbresults
esttab zinbresults using zinbresults.rtf, se replace 
margins, dydx(*) post
eststo zinbmarginsresults
esttab zinbmarginsresults using zinbresults.rtf, se replace
oprobit N_smokingstatus lncigaretteprice i.ethnicityblack i.ethnicityhispanic i.ageisbetween25and34 i.ageisbetween35and44 i.ageisbetween45and54 i.ageisbetween55and64 i.ageisover65 i.ismale i.issingle i.isdivorced i.iswidowed i.highschoolgraduate i.hastakensomecollegeclasses i.collegegraduate i.isunemployed i.incomebetween10kand20k i.incomebetween20kand35k i.incomeover35k i.isincomeunknown  i.isgenhlthgood i.isgenhlthfair i.isgenhlthpoor iyear, robust
margins, dydx(*) post
mlogit N_smokingstatus i.ethnicityblack i.ethnicityhispanic i.ageisbetween25and34 i.ageisbetween35and44 i.ageisbetween45and54 i.ageisbetween55and64 i.ageisover65 i.ismale i.issingle i.isdivorced i.iswidowed i.highschoolgraduate i.hastakensomecollegeclasses i.collegegraduate i.isunemployed i.incomebetween10kand20k i.incomebetween20kand35k i.incomeover35k i.isincomeunknown  i.isgenhlthgood i.isgenhlthfair i.isgenhlthpoor iyear
margins, dydx(*) post
oprobit N_smokingstatus i.ethnicityblack i.ethnicityhispanic i.ageisbetween25and34 i.ageisbetween35and44 i.ageisbetween45and54 i.ageisbetween55and64 i.ageisover65 i.ismale i.issingle i.isdivorced i.iswidowed i.highschoolgraduate i.hastakensomecollegeclasses i.collegegraduate i.isunemployed i.incomebetween10kand20k i.incomebetween20kand35k i.incomeover35k i.isincomeunknown  i.isgenhlthgood i.isgenhlthfair i.isgenhlthpoor iyear
estimates store m1
oprobit N_smokingstatus lncigaretteprice i.ethnicityblack i.ethnicityhispanic i.ageisbetween25and34 i.ageisbetween35and44 i.ageisbetween45and54 i.ageisbetween55and64 i.ageisover65 i.ismale i.issingle i.isdivorced i.iswidowed i.highschoolgraduate i.hastakensomecollegeclasses i.collegegraduate i.isunemployed i.incomebetween10kand20k i.incomebetween20kand35k i.incomeover35k i.isincomeunknown  i.isgenhlthgood i.isgenhlthfair i.isgenhlthpoor iyear
estimates store m2
lrtest m1 m2
oprobit N_smokingstatus lncigaretteprice i.ethnicityblack i.ethnicityhispanic i.ageisbetween25and34 i.ageisbetween35and44 i.ageisbetween45and54 i.ageisbetween55and64 i.ageisover65 i.ismale i.issingle i.isdivorced i.iswidowed i.highschoolgraduate i.hastakensomecollegeclasses i.collegegraduate i.isunemployed i.incomebetween10kand20k i.incomebetween20kand35k i.incomeover35k i.isincomeunknown  i.isgenhlthgood i.isgenhlthfair i.isgenhlthpoor iyear, robust
eststo oprobitresults
esttab oprobitresults using oprobitresults.rtf, se replace
margins, dydx(*) post
eststo oprobitmarginsresults
esttab oprobitmarginsresults using oprobitmarginsresults.rtf, se replace
