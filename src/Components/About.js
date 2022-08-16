import React from "react";
import axios from "axios";


class About extends React.Component {
    // calling variables from database
    constructor(props)
    {
      super(props);
      this.state = {
        abouts:[]
      };
    }
  
    componentDidMount() {
      axios({
        // Assigning api key to fetch data
        url: "http://127.0.0.1:8000/api/abouts",
        method: "GET"
      }).then((res) => {
          // console.log(res.data);
          
        this.setState({
          abouts:res.data,
        });
      });
    }
  
    render() {
      // Assigning state
      var {abouts} = this.state;
  
      return(
        // Displaying the fetched data to web page
        <div id="about">
          {abouts && abouts.map((about)=>{
            return(
              <div key={about.id} className="edu_flex">
                <h2>{about.tagline}</h2>
                <img src={"http://127.0.0.1:8000/storage/"+about.image}/>
                <p>{about.description}</p>
              </div>
            ) 
          })}
      </div>
      )
    }
  }
  
  export default About;