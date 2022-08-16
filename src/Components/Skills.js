import React from "react";
import axios from "axios";


class Skill extends React.Component {
  // calling variables from database
  constructor(props)
  {
    super(props);
    this.state = {
      skills:[]
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
        skills:res.data,
      });
    });
  }

  render() {
    // Assigning state
    // const { image } = this.state;
    // const { skill_level } = this.state;
    var {skills} = this.state;

    return(

      <div id="skill">
      {skills && skills.map((skill)=>{
        return(
          <div key={skill.id} className="skill_flex edu_flex">
            <img src={"http://127.0.0.1:8000/storage/"+skill.image} className="skill_img"/>
          </div>
        ) 
      })}
      </div>
    )
  }
}
  export default Skill;