const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/

const printUserProfile = () => {
    // Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
    const {name,designation,company,hobbies} = user;
    let hobbies_string = " "
    for (let index = 0; index < hobbies.length; index++) {
        
        if (index == hobbies.length -1) {
            hobbies_string += "and "+hobbies[index]+"."
        } 
        else if(index == hobbies.length-1 && index == 0) {
            hobbies_string += hobbies[index]
        }
        else {
            hobbies_string += hobbies[index]+", "
        }
        
    }
    // console.log(hobbies_string)
    console.log(name+" is a "+designation+" at "+company+". He likes "+hobbies_string);
}

printUserProfile()

