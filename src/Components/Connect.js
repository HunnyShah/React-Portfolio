import React from "react";
import axios from "axios";


class Connect extends React.Component {
    // calling variables from database
    constructor(props)
    {
      super(props);
      this.state = {
        title: [],
        link: [],
        image: []
      };
    }
  
    componentDidMount() {
      axios({
        // Assigning api key to fetch data
        url: "http://127.0.0.1:8000/api/connects",
        method: "GET"
      }).then((res) => {
          // console.log(res.data[0].);
          
        this.setState({
          title:res.data[0].title,
          link:res.data[0].link,
          image: res.data[0].image
        });
      });
    }
  
    render() {
      // Assigning state
      const { title } = this.state;
      const { link } = this.state;
      const { image} = this.state;
  
      return(
        // Displaying the fetched data to web page
        <div>
          <p>{image}</p>
        </div>
      )
    }
  }
  export default Connect;