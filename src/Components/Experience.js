import React from "react";
import axios from "axios";


class Experience extends React.Component {
    // calling variables from database
    constructor(props)
    {
      super(props);
      this.state = {
        experiences:[]
      };
    }
  
    componentDidMount() {
      axios({
        // Assigning api key to fetch data
        url: "http://127.0.0.1:8000/api/experiences",
        method: "GET"
      }).then((res) => {
          // console.log(res.data[0].);
          
        this.setState({
          experiences:res.data,
        });
      });
    }
  
    render() {
      // Assigning state
      var {experiences} = this.state;
  
      return(
        <div id="experience">
          {experiences && experiences.map((experience)=>{
            return(
              <div key={experience.id} className="edu_flex">
                <h2>{experience.position}</h2>
                <h5>{experience.company_name}</h5>
                <h5>{experience.job_role}</h5>
                <p>{experience.start_date}</p>
                <p>{experience.end_date}</p>
              </div>
            ) 
          })}
      </div>
      )
    }
  }
  export default Experience;