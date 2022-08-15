import React from "react";
import axios from "axios";

class Project extends React.Component {
  constructor(props)
  {
    super(props);
    this.state = {
      title: [],
      slug: [],
      content: [],
      image: []
    };
  }

  componentDidMount() {
    axios({
      url: "http://127.0.0.1:8000/api/projects",
      method: "GET"
    }).then((res) => {
        // console.log(res.data[0].);
        
      this.setState({
        
        title:res.data[0].title,
        content:res.data[0].content,
        slug: res.data[0].slug,
        image: res.data[0].image
      });
    });
  }

  render() {
    //const statereveal = this.state.statereveal;
    
    const { title } = this.state;
    const { content } = this.state;
    const { slug} = this.state;
    const {image} = this.state;

    return(
      <div>
        <h3>{title}</h3>
        <h5>{slug}</h5>
        <h5>{content}</h5>
        <div>{image}</div>
      </div>
    )
  }
}
export default Project;