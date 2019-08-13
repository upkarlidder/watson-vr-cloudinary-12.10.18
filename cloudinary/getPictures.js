
/**
  *
  * main() will be run when you invoke this action
  *
  * @param Cloud Functions actions accept a single parameter, which must be a JSON object.
  *
  * @return The output of this action, which must be a JSON object.
  *
  */
var request = require("request");
 
function main(params) {
const tagName=params.tag;
   var options = {
      url: "https://res.cloudinary.com/aditimadan/image/list/"+tagName+".json",
      json: true
   };
   return new Promise(function (resolve, reject) {
      request(options, function (err, resp) {
         if (err) {
            console.log(err);
            return reject({err: err});
         }
         else{
             const length=resp.body.resources.length;
             //loop over all the assets returned by the tag
           /*  for(var i=0;i<length;i++){
                 console.log(resp.body.resources[i].public_id);
             }*/
        if(params.value && params.transform){
        var URL="https://res.cloudinary.com/aditimadan/image/upload/"+params.transform+"/"+resp.body.resources[params.value].public_id;
        }
        else if(params.value){
            var URL="https://res.cloudinary.com/aditimadan/image/upload/"+resp.body.resources[params.value].public_id;
        }
        else if(params.transform){
            var URL="https://res.cloudinary.com/aditimadan/image/upload/"+params.transform+"/"+resp.body.resources[0].public_id;
        }
        else{
        var URL=resp.body.resources[0].public_id;
            }
            return resolve({"url":URL});
         }
         
      });
   });
}
