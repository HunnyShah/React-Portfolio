import React from "react";
import axios from "axios";

class Project extends React.Component {
  constructor(props)
  {
    super(props);
    this.state = {
      projects:[]
    };
  }

  componentDidMount() {
    axios({
      url: "http://127.0.0.1:8000/api/projects",
      method: "GET"
    }).then((res) => {
        // console.log(res.data[0].);
        
      this.setState({
        
        projects:res.data,
      });
    });
  }

  render() {
    //const statereveal = this.state.statereveal;
    
    var {projects} = this.state;

    return(
      <div id="project">
        {projects && projects.map((project)=>{
          return(
            <div key={project.id} className="edu_flex">
              <h2>{project.title}</h2>
              <h5>{project.slug}</h5>
              <p>{project.content}</p>
            </div>
          ) 
        })}
      </div>
    )
  }
}
export default Project;