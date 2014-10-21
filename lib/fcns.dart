library fcns;


List association(List associationFriends) { 
    
   List answer = new List(); 
   Map sort = associationFriends.elementAt(0); 
   answer.add(sort); 
    
   for (int n = 1; n < associationFriends.length; n++) { 
     bool inserted = false; 
     sort = associationFriends.elementAt(n); 
     String lastName = sort["Nom de famille"]; 
     String firstName = sort["Prénom"]; 
     
   for (int n = 0; n < answer.length; n++) { 
     Map values = answer.elementAt(n); 
     String selectKeyLastName = values["Nom de famille"]; 
     String selectKeyFirstName = values["Prénom"]; 
     
    if (lastName.compareTo(selectKeyLastName) < 0 && inserted == false) { 
       answer.insert(n, sort); 
      inserted = true; 
    } 
    else if (lastName.compareTo(selectKeyLastName) == 0 && inserted == false) { 
     
      for (int o = n; o < answer.length; o++) { 
        values = answer.elementAt(n); 
        selectKeyLastName = values["Nom de famille"]; 
        selectKeyFirstName = values["Prénom"];
         
        if (lastName.compareTo(selectKeyLastName) == 0 && firstName.compareTo(selectKeyFirstName) < 0 && inserted == false) { 
         answer.insert(o, sort); 
         inserted = true; 
        } 
         
        else if (lastName.compareTo(selectKeyLastName) != 0 && inserted == false) { 
          answer.insert(o, sort); 
          inserted = true; 
        } 
      } 
    } 
   } 
     if (inserted == false) { 
       answer.add(sort); 
     } 
   } 
   
   return answer; 
 } 
 
 
 List beginWith(List members, String letter) { 
 List returnList = new List(); 
    
   for (int i = 0; i < members.length; i++) { 
     Map sort = members.elementAt(i); 
     String lastName = sort["Nom de famille"]; 
     if(lastName.substring(0, 1) == letter) { 
       returnList.add(sort); 
     } 
   } 
     return returnList; 
 } 

 var members = [ 
                {"Association": "Joueurs de hockey", "Prénom": "Fred", "Nom de famille": "Girard", "Courriel": "fred.girard@gmail.ca"}, 
                {"Association": "Lucky 7", "Prénom": "Maxime", "Nom de famille": "Gagnon", "Courriel": "max.gagnon@hotmail.com"}, 
                {"Association": "Joueurs de hockey", "Prénom": "Raphaël", "Nom de famille": "Patry", "Courriel": "Patry1@ulaval.ca"}, 
                {"Association": "Lucky 7", "Prénom": "Sylvain", "Nom de famille": "Lemieux", "Courriel": "Sylemieux@hotmail.ca"}, 
                {"Association": "Joueurs de hockey", "Prénom": "Jean-Philippe", "Nom de famille": "Lehuu", "Courriel": "jp_lehuu1@ulaval.ca"}, 
                {"Association": "Lucky 7", "Prénom": "Terry", "Nom de famille": "Cantin", "Courriel": "terry.cantin@msn.ca"},
     ]; 

 printRow(var row){
   for(var n in row){
   print(n);
   }
 }
