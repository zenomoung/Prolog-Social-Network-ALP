:- module(professionalsocialnetwork, [colleague/2, manager/3, worksin/3, in_company/2, boss/2, head/1, expert/1, hasfollowers/1, comrade/2]).
:- use_module(library(chr)).
:- chr_constraint hasfollowers/1, worksin/3, boss/2, colleague/2, in_company/2, diff/2, adult/1, affiliated/3, manager/3, head/1, comrade/2.

%% FACTS
in_company(marketing, apple).
in_company(design, apple).
worksin(john, marketing, apple).
head(john).
publishes_on(john, computer).
hasfollowers(john).
studiedat(john, economics, 2006, 2007).
in_university(economics, descartes).
in_university(economics, stanford).
studiedat(bob, economics, 2006, 2007).

%% RULES
manager(Name, Department, Company):-worksin(Name, Department, Company), head(Name).
worksin(Name, Department, Company):-adult(Name), affiliated(Name, Department, Company).
expert(Person):- dedicated(Person, Subject), hasfollowers(Person).
dedicated(Person, subject):- publishes_on(Person, Subject).

%%ICs
diff(X,X) ==> fail.
comrade(PersonA, PersonB)<=> diff(PersonA, PersonB), studiedat(PersonA, Department, From, To), studiedat(PersonB, Department, From, To), in_university(Department, University).
colleague(PersonA, PersonB)<=> diff(PersonA, PersonB), worksin(PersonA, Department, Company), worksin(PersonB, Department, Company), in_company(Department, Company).
boss(PersonA, PersonB)<=> colleague(PersonA, PersonB), manager(PersonA, Department, Company), in_company(Department, Company).
