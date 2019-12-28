Oracle 10g login Details :

username : system
password : 123blood



Number of tables in the project used : 2 

 1) regform : Where user details will be saved after SignUp/Register.
 
 2) addques : where all the questions(ques) will be saved by Admin along with question_id(qid), the 4 radio options(opt1...opt4), correctanswer(correctopt) and name of language(lang).



Create Table Query for 'regform' :
 
  -- Create table regform(uname varchar2(30), umail varchar2(30) primary key, upass varchar2(30), uno varchar2(30));

Create Table Query for 'addques' :

  -- Create table addques(qid varchar2(6) primary key, ques varchar2(2000),opt1 varchar2(2000), opt2 varchar2(2000),opt3 varchar2(2000), opt4 varchar2(2000),correctopt varchar2(10), lang varchar2(10));

Sequence used for Auto-Increment for question id :

  -- Create sequence add_ques start with 100000 increment by 1 minvalue 1 maxvalue 999999;