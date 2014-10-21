import 'package:ex08/fcns.dart';

//J'ai été aidé par mes coéquipiers pour ce trvail.    

void ex08_Q1(){ 
  
  var letterName = "C";
  var associationFriends = [ 
             {"Association": "Joueurs de hockey", "Prénom": "Fred", "Nom de famille": "Girard", "Courriel": "fred.girard@gmail.ca\n"}, 
             {"Association": "Lucky 7", "Prénom": "Maxime", "Nom de famille": "Gagnon", "Courriel": "max.gagnon@hotmail.com\n"}, 
             {"Association": "Joueurs de hockey", "Prénom": "Raphaël", "Nom de famille": "Patry", "Courriel": "Patry1@ulaval.ca\n"}, 
             {"Association": "Lucky 7", "Prénom": "Sylvain", "Nom de famille": "Lemieux", "Courriel": "Sylemieux@hotmail.ca\n"}, 
             {"Association": "Joueurs de hockey", "Prénom": "Jean-Philippe", "Nom de famille": "Lehuu", "Courriel": "jp_lehuu1@ulaval.ca\n"}, 
             {"Association": "Lucky 7", "Prénom": "Terry", "Nom de famille": "Cantin", "Courriel": "terry.cantin@msn.ca\n"}, 
             ];
  var answer_q1 = ("${association(associationFriends)}\n");
  var answer_q2 = beginWith(associationFriends, ('${letterName}'));
  
   
  
  print ("\n");
  print("Question 1");
  print("----------"); 
  print("1- Trier la liste des membres d’une association donnée en premier par le nom de famille puis par le prénom. \n");              
  print('Réponse:\n\n$answer_q1'); 
  
  print("2- Fournissez une façon d’obtenir seulement les membres de toutes les associations d’où le nom de famille débute avec une lettre donnée.\n");
  print('Association dont le nom de famille débute avec la lettre: [ $letterName ]\nRéponse:\n\n$answer_q2');
  
}


void ex08_Q2(){
  
  print ("\n");
  print("Question 2");
  print("----------"); 
  print("Créez un 'class model' avec des associations et ses membres.\n"); 
  
  test(var firstName, var lastName, var members){
     for(var n in members){
        if(n['Prénom'] == firstName && n['Nom de famille'] == lastName)
        return true;
     }
     return false;
   }
  
   additions(var associationFriends, var firstName, var lastName, var email, var members){
       members.add({
                    'Association': associationFriends,
                    'Prénom': firstName,
                    'Nom de famille': lastName,
                    'Courriel': email, 
                  });

     firstNameAssort(var members){
      members.sort((x, y) => x['Nom de famille'].compareTo(y['Prénom']));
      print('\nAjout d’entités:\n');
      printRow(members); 
     }   
     firstNameAssort(members);   
   } 
     additions('Joueurs de hockey', 'Jean-Claude', 'Tremblay', 'jc_tremb@msn.ca', members); 
  
     removal(var firstName, var lastName, var email, var members){     
      for(var n = 0; n < members.length; n++){        
       if(members[n]['Prénom'] == firstName && members[n]['Nom de famille'] == lastName && members[n]['Courriel'] == email){
         members.removeAt(n);
       }
      }
 
      firstNameAssort(var members){
      members.sort((x, y) => x['Nom de famille'].compareTo(y['Prénom']));
      print('\nRetrait d’entités:\n'); 
      printRow(members); 
     }    
      firstNameAssort(members);
   } 
     removal('Maxime', 'Gagnon', 'max.gagnon@hotmail.com', members);
   
   update(var associationFriends, var firstName, var lastName, var email, var members){
      for(var n = 0; n < members.length; n++){
        if(members[n]['Prénom'] == firstName && members[n]['Nom de famille'] == lastName){
           members[n]['Association'] = associationFriends;
           members[n]['Prénom'] = firstName;
           members[n]['Nom de famille'] = lastName;
           members[n]['Courriel'] = email; 
       }
      }
     
      firstNameAssort(var members){
       members.sort((x, y) => x['Nom de famille'].compareTo(y['Prénom']));
       print('\nMise à jour d’entités:\n'); 
       printRow(members);
     }
      firstNameAssort(members);
   }

   update('Joueurs de hockey', 'Fred', 'Girard', ['fredG1@ulaval.ca'], members);
 
  
}

void main() {
  ex08_Q1();  
  ex08_Q2();  
      
}
