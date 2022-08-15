import React from "react";
import axios from "axios";


class About extends React.Component {
    // calling variables from database
    constructor(props)
    {
      super(props);
      this.state = {
        image: [],
        tagline: [],
        description: []
      };
    }
  
    componentDidMount() {
      axios({
        // Assigning api key to fetch data
        url: "http://127.0.0.1:8000/api/abouts",
        method: "GET"
      }).then((res) => {
          // console.log(res.data[0].);
          
        this.setState({
          image:res.data[0].image,
          tagline:res.data[0].tagline,
          description: res.data[0].description
        });
      });
    }
  
    render() {
      // Assigning state
      const { tagline } = this.state;
      const { image } = this.state;
      const { description} = this.state;
  
      return(
        // Displaying the fetched data to web page
        <div>
          <h3>{tagline}</h3>
          <div>{image}</div>
          <h5>{description}</h5>
        </div>
      )
    }
  }
  
  export default About;