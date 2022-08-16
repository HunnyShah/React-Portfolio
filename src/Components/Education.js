import React from "react";
import axios from "axios";


class Education extends React.Component {
    // calling variables from database
    constructor(props)
    {
      super(props);
      this.state = {
        educations:[]
      };
    }
  
    componentDidMount() {
      axios({
        // Assigning api key to fetch data
        url: "http://127.0.0.1:8000/api/educations",
        method: "GET"
      }).then((res) => {
          // console.log(res.data[0].);
          
        this.setState({
          educations:res.data,
        });
      });
    }
  
    render() {
      // Assigning state
      var {educations} = this.state;

      return(
        // Displaying the fetched data to web page
        <div id="education" className="con_flex">
          {educations && educations.map((education)=>{
            return(
              <div key={education.id} className="edu_flex">
                <h2>{education.degree}</h2>
                <h5>{education.institutename}</h5>
                <h5>{education.location}</h5>
                <h5>{education.completedate}</h5>
                <p>{education.info}</p>
              </div>
            ) 
          })}
      </div>
      )
    }
  }
  export default Education;