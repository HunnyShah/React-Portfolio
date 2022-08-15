import React from "react";
import axios from "axios";


class Experience extends React.Component {
    // calling variables from database
    constructor(props)
    {
      super(props);
      this.state = {
        image: [],
        company_name: [],
        position: [],
        job_role: [],
        start_date: [],
        end_date: []
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
          image:res.data[0].image,
          company_name:res.data[0].company_name,
          position: res.data[0].position,
          job_role: res.data[0].job_role,
          start_date: res.data[0].start_date,
          end_date:res.data[0].end_date
        });
      });
    }
  
    render() {
      // Assigning state
      const { image } = this.state;
      const { company_name } = this.state;
      const { position} = this.state;
      const {job_role} = this.state;
      const {start_date} = this.state;
      const {end_date} = this.state;
  
      return(
        // Displaying the fetched data to web page
        <div>
          <h3>{position}</h3>
          <h5>{image}{company_name}</h5>
          <h5>{job_role}</h5>
          <h6>{start_date}</h6>
          <h6>{end_date}</h6>
        </div>
      )
    }
  }
  export default Experience;