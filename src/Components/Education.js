import React from "react";
import axios from "axios";


class Education extends React.Component {
    // calling variables from database
    constructor(props)
    {
      super(props);
      this.state = {
        institutename: [],
        location: [],
        degree: [],
        completedate: [],
        info: []
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
          institutename:res.data[0].institutename,
          location:res.data[0].location,
          degree: res.data[0].degree,
          completedate: res.data[0].completedate,
          info: res.data[0].info
        });
      });
    }
  
    render() {
      // Assigning state
      const { institutename } = this.state;
      const { location } = this.state;
      const { degree} = this.state;
      const {completedate} = this.state;
      const {info} = this.state;
  
      return(
        // Displaying the fetched data to web page
        <div>
          <h3>{degree}</h3>
          <h5>{institutename}</h5>
          <h5>{location}</h5>
          <h6>{completedate}</h6>
          <h6>{info}</h6>
        </div>
      )
    }
  }
  export default Education;