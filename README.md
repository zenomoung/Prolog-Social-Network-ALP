#Inference of relationships in a professional social network using Abductive Logic Programing

#####Frédéric Moung, Department of Computing Paris Descartes University
**Abstract:** I describe an application of Abductive Logic Programming (ALP) to the analysis of the relationship between members of a professional social network. This project develops an ALP theory that provides a simple and general model of interactions and relations based on properties of the members.

1. Introduction

Business oriented social networks are used by almost everybody who has a professional life. Students or full professional can use it to make business relations, get or stay in touch with colleagues or former colleagues. This kind of network is also used to know or present skills or company hierarchy.

2. Model

Following the relationships with the predicates:
• colleague • comrade • boss
• expert
I added some integrity constraints, a diff, and some on the predicates. CHR was the constraints rulers I found to model integrity constraints.

3. Analysis

Once we understand how to think in prolog, the language becomes powerful, but it takes some times. It is even more difficult when we come from a more procedural development paradigm.
The second difficulty is to find a model, which properties to use, which hierarchy, where and how to add integrity constraints.

There are still a lot to do, for instance add the skills and the jobs or roles in companies and match them.

4. HOW TO USE

Some facts have been added, you can change those.
To use it as is, just type one of the following queries:
colleague(john, bob).
boss(john, bob).
expert(bob).

