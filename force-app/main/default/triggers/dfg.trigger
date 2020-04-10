trigger dfg on Account (after insert) {
List<Contact> conlst = new List<Contact>();
    For(Account acc:Trigger.New){
       Contact con = New Contact();
       con.lastname = acc.name;
       con.accountid=acc.id;
       conlst.add(con);
    }
    insert conlst;

}