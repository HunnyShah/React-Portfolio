import React from "react";
import axios from "axios";


class Skill extends React.Component {
  // calling variables from database
  constructor(props)
  {
    super(props);
    this.state = {
      image: [],
      skill_level: []
    };
  }

  componentDidMount() {
    axios({
      // Assigning api key to fetch data
      url: "http://127.0.0.1:8000/api/skills",
      method: "GET"
    }).then((res) => {
        // console.log(res.data[0].);
        
      this.setState({
        image:res.data[0].image,
        skill_level:res.data[0].skill_level
      });
    });
  }

  render() {
    // Assigning state
    const { image } = this.state;
    const { skill_level } = this.state;

    return(
      // Displaying the fetched data to web page
      <div>
        <div>{image}</div>
        <h5>{skill_level}</h5>
      </div>
    )
  }
}
  export default Skill;